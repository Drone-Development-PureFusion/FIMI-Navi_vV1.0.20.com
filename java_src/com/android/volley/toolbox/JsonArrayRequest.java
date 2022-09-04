package com.android.volley.toolbox;

import com.android.volley.NetworkResponse;
import com.android.volley.ParseError;
import com.android.volley.Response;
import java.io.UnsupportedEncodingException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class JsonArrayRequest extends JsonRequest<JSONArray> {
    public JsonArrayRequest(int method, String url, String requestBody, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) {
        super(method, url, requestBody, listener, errorListener);
    }

    public JsonArrayRequest(String url, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) {
        super(0, url, null, listener, errorListener);
    }

    public JsonArrayRequest(int method, String url, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) {
        super(method, url, null, listener, errorListener);
    }

    public JsonArrayRequest(int method, String url, JSONArray jsonRequest, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) {
        super(method, url, jsonRequest == null ? null : jsonRequest.toString(), listener, errorListener);
    }

    public JsonArrayRequest(int method, String url, JSONObject jsonRequest, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) {
        super(method, url, jsonRequest == null ? null : jsonRequest.toString(), listener, errorListener);
    }

    public JsonArrayRequest(String url, JSONArray jsonRequest, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) {
        this(jsonRequest == null ? 0 : 1, url, jsonRequest, listener, errorListener);
    }

    public JsonArrayRequest(String url, JSONObject jsonRequest, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) {
        this(jsonRequest == null ? 0 : 1, url, jsonRequest, listener, errorListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.toolbox.JsonRequest, com.android.volley.Request
    public Response<JSONArray> parseNetworkResponse(NetworkResponse response) {
        try {
            String jsonString = new String(response.data, HttpHeaderParser.parseCharset(response.headers, "utf-8"));
            return Response.success(new JSONArray(jsonString), HttpHeaderParser.parseCacheHeaders(response));
        } catch (UnsupportedEncodingException e) {
            return Response.error(new ParseError(e));
        } catch (JSONException je) {
            return Response.error(new ParseError(je));
        }
    }
}
