package com.demo.utility;

import javax.servlet.http.HttpServletRequest;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;

public class URLUtil {
    public static String getCurrentUrl(HttpServletRequest request) throws MalformedURLException, URISyntaxException {

        URL url = new URL(request.getRequestURL().toString());

        String host  = url.getHost();
        String directory_url = "https://" + host + "/";
        return  directory_url;
    }
}
