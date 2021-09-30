<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>E-Form</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.bootcdn.net/ajax/libs/tailwindcss/2.1.1/base.css" rel="stylesheet">
    <link href="https://cdn.bootcdn.net/ajax/libs/tailwindcss/2.1.1/components.css" rel="stylesheet">
    <link href="https://cdn.bootcdn.net/ajax/libs/tailwindcss/2.1.1/utilities.css" rel="stylesheet">

</head>

<body class="bg-gray">
    <div class="relative flex items-top justify-center min-h-screen bg-gray-100 dark:bg-gray-900 sm:items-center sm:pt-0">

        <div class="max-w-6xl mx-auto sm:px-6 lg:px-8">
            <div class="flex justify-center pt-8 sm:justify-start sm:pt-0">

                <div style="width:1000px;max-width:1000px">
                    @if(session()->has('message'))
                    <div class="alert alert-success">
                        {{ session()->get('message') }}
                    </div>
                    @endif
                    <form method="POST" action="{{route('eform.submit',['formCode'=>$code])}}" class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">
                        <div class="font-bold text-xl mb-2">#{{$code}} - {{$name}}</div>
                        @csrf
                        @if(count($questions)>0)
                        @foreach ($questions as $question)
                        <div class="mb-4">
                            <label for="{{strtolower(str_replace(' ','_',$question['title']))}}"
                                class="block text-gray-700 text-sm font-bold mb-2">{{$question['title']}}</label>
                            @switch($question['type'])
                            @case('text')
                            <input type="{{$question['type']}}"
                                name="{{strtolower(str_replace(' ','_',$question['title']))}}"
                                {{$question['must']?'required':''}}
                                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
                            @break
                            @case('select')
                            <select name="{{strtolower(str_replace(' ','_',$question['title']))}}" id=""
                            {{$question['must']?'required':''}}
                            >
                                @foreach ($question['options'] as $k_option => $v_option)
                                <option value="{{$k_option}}">{{$v_option}}</option>
                                @endforeach
                            </select>
                            @break
                            @case('textarea')
                            <textarea name="{{strtolower(str_replace(' ','_',$question['title']))}}" id="" cols="30" rows="10"
                            {{$question['must']?'required':''}}
                            ></textarea>
                            @break
                            @default
                            @endswitch
                        </div>
                        @endforeach
                        <div class="flex items-center justify-between">
                            <button
                                class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                                type="submit">
                                {{__('Submit Now')}}
                            </button>
                            {{-- <a class="inline-block align-baseline font-bold text-sm text-blue-500 hover:text-blue-800"
                                href="#">
                                Forgot Password?
                            </a> --}}
                        </div>
                        @else
                        <div class="font-bold text-xl mb-2">No Question</div>
                        @endif

                    </form>
                    <p class="text-center text-gray-500 text-xs">
                        &copy;2021 HKICT - By Mann. · v3.22.0
                    </p>
                </div>




            </div>
        </div>
    </div>
</body>

</html>