import 'dart:convert';

import 'package:biology_fun/app/constant/api_url.dart';
import 'package:http/http.dart' as http;

import '../../data/model/list_material_model.dart';

class MaterialService {
  Future<List<MaterialClass>> getAllMaterial() async {
    try {
      Uri uri = Uri.parse('$apiUrl/material');
      http.Response response = await http.get(
        uri,
        headers: {
          'Authorization':
              'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5OTJjNmE0ZS0zZDU4LTQ5NjItYWMxYS00Mzg4ODczNWNhMjAiLCJqdGkiOiJjOTc3MjY5YTM1YTk5Y2EwMWUwMzRjNjU2OTBmMzRlMDAzMWI5ODI0OGU0NzMxMzBlMGI4OGQzZDYyNWEzMTI0ZDdiODQ0ODA5MTlhY2JmZSIsImlhdCI6MTY4NDE2MDgzNi44ODUwMzQsIm5iZiI6MTY4NDE2MDgzNi44ODUwMzYsImV4cCI6MTcxNTc4MzIzNi44ODEyMDEsInN1YiI6ImI5NDYxMTM3LTEwMjAtNDU5Mi05MWE3LTM4YzE4Zjk4ZDMwOCIsInNjb3BlcyI6W119.BmyUiHRA-EtfHsXIufryS7y-aq08twMifLflooEZBn3MCnayFsHS8PIT296D4pnF4QEUue-WLzxbWlQbHMhxZLHeJ64rVjXksPthcbJkR7ra8x0iSyFBPetd336uXGZ45Iz-u4bkDu-ICNIPEqWNuxFjdTZW9IGrvck0_S2mi0XlXPjg1qY06Rub4Fy7EPWjAPfrG0frLltJsJrAGH_GacUVlA45jHCws46xieyszL4-2dJdZAaahQahzbqVCz90UhMfkAZq8AHCHKNcST5diX9FeLDhiHLmOCuZjtz5sb9D2i_Q2ibLOgd6DpTVZLP7L9PgGClOupvxxrffvVBQa5tJySM-ht0xJ_86u-W-FpvG6Qz0JmsNYVkzP0j_CjvYe7OEBEKa6UZOb0S5JUfE7o2QKnEiZqf8zmMrTiLvohYrEzVF4E4g6kmHBcl0iOJWQ9-xwwzbLLCQORiWi_Jeb3DlzGM8HZfswWQYr_Nm9ntfavoU8ZR-xwQm-mzfeXhsgx_7aTX8P1Tw6HCzk9iXbdoGzrizwPuym8DT2Q4igWC_bjFfV7tSEc8dPnu94GD_Mh_CUbnGM3ge8_RWeGTH5kfxU_zUXzZLud2jvLbw4rBV9gr_SCka61czBmxlhecOkv9zdO8bDS9q0OrP6zKx6Fe-S7RdqHAQDZo8ifb5VjQ',
        },
      );
      if (response.statusCode == 200) {
        List? data =
            (json.decode(response.body) as Map<String, dynamic>)['data'];
        if (data == null || data.isEmpty) {
          return [];
        } else {
          return data.map((e) => MaterialClass.fromJson(e)).toList();
        }
      }
      return [];
    } catch (e) {
      throw Exception(e);
    }
  }
}
