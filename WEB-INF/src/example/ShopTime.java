// 날짜 나오지 않음 ----------------------------------------------------------시간만 나옴
// 날짜 출력 소스 분리하기
package example;
import java.util.Date; // 날짜 관련 정보 얻기

public class ShopTime {
    public String timenow() {
       Date day = new java.util.Date();
        String am_pm;
        int hour = day.getHours(); // 시간
        int minute = day.getMinutes(); // 분
        int second = day.getSeconds(); // 초
        hour=hour+9; // 대한민국 시간으로 계산
        if (hour / 12 == 0) {
            am_pm = "AM"; // 오전 판단
        } else {
            am_pm = "PM"; // 오후 판단
            hour = hour - 12; 
        }
        String CT = hour + ":" + minute + ":" + second + " " + am_pm; // 출력 문자열 조합
        return CT; // 문자열 리턴
    }
}