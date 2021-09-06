def choose_car(use, type='전기차'):
    print("""
        {use}용도로
        {type}를 선택했습니다.
        """.format(use=use,type=type))

choose_car('출퇴근')

#순서대로 매개변수 읽는 위치인자
choose_car('캠핑', '디젤차')

#키워드인자
choose_car(type='가솔린차', use='출장')