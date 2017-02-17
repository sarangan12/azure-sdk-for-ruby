/**
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License. See License.txt in the project root for
 * license information.
 *
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

package fixtures.http;

import com.microsoft.rest.ServiceCallback;
import com.microsoft.rest.ServiceFuture;
import com.microsoft.rest.ServiceResponseWithHeaders;
import fixtures.http.models.HttpRedirectsDelete307Headers;
import fixtures.http.models.HttpRedirectsGet300Headers;
import fixtures.http.models.HttpRedirectsGet301Headers;
import fixtures.http.models.HttpRedirectsGet302Headers;
import fixtures.http.models.HttpRedirectsGet307Headers;
import fixtures.http.models.HttpRedirectsHead300Headers;
import fixtures.http.models.HttpRedirectsHead301Headers;
import fixtures.http.models.HttpRedirectsHead302Headers;
import fixtures.http.models.HttpRedirectsHead307Headers;
import fixtures.http.models.HttpRedirectsPatch302Headers;
import fixtures.http.models.HttpRedirectsPatch307Headers;
import fixtures.http.models.HttpRedirectsPost303Headers;
import fixtures.http.models.HttpRedirectsPost307Headers;
import fixtures.http.models.HttpRedirectsPut301Headers;
import fixtures.http.models.HttpRedirectsPut307Headers;
import java.util.List;
import rx.Observable;

/**
 * An instance of this class provides access to all the operations defined
 * in HttpRedirects.
 */
public interface HttpRedirects {
    /**
     * Return 300 status code and redirect to /http/success/200.
     *
     */
    void head300();

    /**
     * Return 300 status code and redirect to /http/success/200.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> head300Async(final ServiceCallback<Void> serviceCallback);

    /**
     * Return 300 status code and redirect to /http/success/200.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> head300Async();

    /**
     * Return 300 status code and redirect to /http/success/200.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsHead300Headers>> head300WithServiceResponseAsync();

    /**
     * Return 300 status code and redirect to /http/success/200.
     *
     * @return the List&lt;String&gt; object if successful.
     */
    List<String> get300();

    /**
     * Return 300 status code and redirect to /http/success/200.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<List<String>> get300Async(final ServiceCallback<List<String>> serviceCallback);

    /**
     * Return 300 status code and redirect to /http/success/200.
     *
     * @return the observable to the List&lt;String&gt; object
     */
    Observable<List<String>> get300Async();

    /**
     * Return 300 status code and redirect to /http/success/200.
     *
     * @return the observable to the List&lt;String&gt; object
     */
    Observable<ServiceResponseWithHeaders<List<String>, HttpRedirectsGet300Headers>> get300WithServiceResponseAsync();

    /**
     * Return 301 status code and redirect to /http/success/200.
     *
     */
    void head301();

    /**
     * Return 301 status code and redirect to /http/success/200.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> head301Async(final ServiceCallback<Void> serviceCallback);

    /**
     * Return 301 status code and redirect to /http/success/200.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> head301Async();

    /**
     * Return 301 status code and redirect to /http/success/200.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsHead301Headers>> head301WithServiceResponseAsync();

    /**
     * Return 301 status code and redirect to /http/success/200.
     *
     */
    void get301();

    /**
     * Return 301 status code and redirect to /http/success/200.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> get301Async(final ServiceCallback<Void> serviceCallback);

    /**
     * Return 301 status code and redirect to /http/success/200.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> get301Async();

    /**
     * Return 301 status code and redirect to /http/success/200.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsGet301Headers>> get301WithServiceResponseAsync();

    /**
     * Put true Boolean value in request returns 301.  This request should not be automatically redirected, but should return the received 301 to the caller for evaluation.
     *
     */
    void put301();

    /**
     * Put true Boolean value in request returns 301.  This request should not be automatically redirected, but should return the received 301 to the caller for evaluation.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> put301Async(final ServiceCallback<Void> serviceCallback);

    /**
     * Put true Boolean value in request returns 301.  This request should not be automatically redirected, but should return the received 301 to the caller for evaluation.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> put301Async();

    /**
     * Put true Boolean value in request returns 301.  This request should not be automatically redirected, but should return the received 301 to the caller for evaluation.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsPut301Headers>> put301WithServiceResponseAsync();
    /**
     * Put true Boolean value in request returns 301.  This request should not be automatically redirected, but should return the received 301 to the caller for evaluation.
     *
     * @param booleanValue Simple boolean value true
     */
    void put301(Boolean booleanValue);

    /**
     * Put true Boolean value in request returns 301.  This request should not be automatically redirected, but should return the received 301 to the caller for evaluation.
     *
     * @param booleanValue Simple boolean value true
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> put301Async(Boolean booleanValue, final ServiceCallback<Void> serviceCallback);

    /**
     * Put true Boolean value in request returns 301.  This request should not be automatically redirected, but should return the received 301 to the caller for evaluation.
     *
     * @param booleanValue Simple boolean value true
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> put301Async(Boolean booleanValue);

    /**
     * Put true Boolean value in request returns 301.  This request should not be automatically redirected, but should return the received 301 to the caller for evaluation.
     *
     * @param booleanValue Simple boolean value true
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsPut301Headers>> put301WithServiceResponseAsync(Boolean booleanValue);

    /**
     * Return 302 status code and redirect to /http/success/200.
     *
     */
    void head302();

    /**
     * Return 302 status code and redirect to /http/success/200.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> head302Async(final ServiceCallback<Void> serviceCallback);

    /**
     * Return 302 status code and redirect to /http/success/200.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> head302Async();

    /**
     * Return 302 status code and redirect to /http/success/200.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsHead302Headers>> head302WithServiceResponseAsync();

    /**
     * Return 302 status code and redirect to /http/success/200.
     *
     */
    void get302();

    /**
     * Return 302 status code and redirect to /http/success/200.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> get302Async(final ServiceCallback<Void> serviceCallback);

    /**
     * Return 302 status code and redirect to /http/success/200.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> get302Async();

    /**
     * Return 302 status code and redirect to /http/success/200.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsGet302Headers>> get302WithServiceResponseAsync();

    /**
     * Patch true Boolean value in request returns 302.  This request should not be automatically redirected, but should return the received 302 to the caller for evaluation.
     *
     */
    void patch302();

    /**
     * Patch true Boolean value in request returns 302.  This request should not be automatically redirected, but should return the received 302 to the caller for evaluation.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> patch302Async(final ServiceCallback<Void> serviceCallback);

    /**
     * Patch true Boolean value in request returns 302.  This request should not be automatically redirected, but should return the received 302 to the caller for evaluation.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> patch302Async();

    /**
     * Patch true Boolean value in request returns 302.  This request should not be automatically redirected, but should return the received 302 to the caller for evaluation.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsPatch302Headers>> patch302WithServiceResponseAsync();
    /**
     * Patch true Boolean value in request returns 302.  This request should not be automatically redirected, but should return the received 302 to the caller for evaluation.
     *
     * @param booleanValue Simple boolean value true
     */
    void patch302(Boolean booleanValue);

    /**
     * Patch true Boolean value in request returns 302.  This request should not be automatically redirected, but should return the received 302 to the caller for evaluation.
     *
     * @param booleanValue Simple boolean value true
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> patch302Async(Boolean booleanValue, final ServiceCallback<Void> serviceCallback);

    /**
     * Patch true Boolean value in request returns 302.  This request should not be automatically redirected, but should return the received 302 to the caller for evaluation.
     *
     * @param booleanValue Simple boolean value true
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> patch302Async(Boolean booleanValue);

    /**
     * Patch true Boolean value in request returns 302.  This request should not be automatically redirected, but should return the received 302 to the caller for evaluation.
     *
     * @param booleanValue Simple boolean value true
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsPatch302Headers>> patch302WithServiceResponseAsync(Boolean booleanValue);

    /**
     * Post true Boolean value in request returns 303.  This request should be automatically redirected usign a get, ultimately returning a 200 status code.
     *
     */
    void post303();

    /**
     * Post true Boolean value in request returns 303.  This request should be automatically redirected usign a get, ultimately returning a 200 status code.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> post303Async(final ServiceCallback<Void> serviceCallback);

    /**
     * Post true Boolean value in request returns 303.  This request should be automatically redirected usign a get, ultimately returning a 200 status code.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> post303Async();

    /**
     * Post true Boolean value in request returns 303.  This request should be automatically redirected usign a get, ultimately returning a 200 status code.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsPost303Headers>> post303WithServiceResponseAsync();
    /**
     * Post true Boolean value in request returns 303.  This request should be automatically redirected usign a get, ultimately returning a 200 status code.
     *
     * @param booleanValue Simple boolean value true
     */
    void post303(Boolean booleanValue);

    /**
     * Post true Boolean value in request returns 303.  This request should be automatically redirected usign a get, ultimately returning a 200 status code.
     *
     * @param booleanValue Simple boolean value true
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> post303Async(Boolean booleanValue, final ServiceCallback<Void> serviceCallback);

    /**
     * Post true Boolean value in request returns 303.  This request should be automatically redirected usign a get, ultimately returning a 200 status code.
     *
     * @param booleanValue Simple boolean value true
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> post303Async(Boolean booleanValue);

    /**
     * Post true Boolean value in request returns 303.  This request should be automatically redirected usign a get, ultimately returning a 200 status code.
     *
     * @param booleanValue Simple boolean value true
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsPost303Headers>> post303WithServiceResponseAsync(Boolean booleanValue);

    /**
     * Redirect with 307, resulting in a 200 success.
     *
     */
    void head307();

    /**
     * Redirect with 307, resulting in a 200 success.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> head307Async(final ServiceCallback<Void> serviceCallback);

    /**
     * Redirect with 307, resulting in a 200 success.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> head307Async();

    /**
     * Redirect with 307, resulting in a 200 success.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsHead307Headers>> head307WithServiceResponseAsync();

    /**
     * Redirect get with 307, resulting in a 200 success.
     *
     */
    void get307();

    /**
     * Redirect get with 307, resulting in a 200 success.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> get307Async(final ServiceCallback<Void> serviceCallback);

    /**
     * Redirect get with 307, resulting in a 200 success.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> get307Async();

    /**
     * Redirect get with 307, resulting in a 200 success.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsGet307Headers>> get307WithServiceResponseAsync();

    /**
     * Put redirected with 307, resulting in a 200 after redirect.
     *
     */
    void put307();

    /**
     * Put redirected with 307, resulting in a 200 after redirect.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> put307Async(final ServiceCallback<Void> serviceCallback);

    /**
     * Put redirected with 307, resulting in a 200 after redirect.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> put307Async();

    /**
     * Put redirected with 307, resulting in a 200 after redirect.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsPut307Headers>> put307WithServiceResponseAsync();
    /**
     * Put redirected with 307, resulting in a 200 after redirect.
     *
     * @param booleanValue Simple boolean value true
     */
    void put307(Boolean booleanValue);

    /**
     * Put redirected with 307, resulting in a 200 after redirect.
     *
     * @param booleanValue Simple boolean value true
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> put307Async(Boolean booleanValue, final ServiceCallback<Void> serviceCallback);

    /**
     * Put redirected with 307, resulting in a 200 after redirect.
     *
     * @param booleanValue Simple boolean value true
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> put307Async(Boolean booleanValue);

    /**
     * Put redirected with 307, resulting in a 200 after redirect.
     *
     * @param booleanValue Simple boolean value true
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsPut307Headers>> put307WithServiceResponseAsync(Boolean booleanValue);

    /**
     * Patch redirected with 307, resulting in a 200 after redirect.
     *
     */
    void patch307();

    /**
     * Patch redirected with 307, resulting in a 200 after redirect.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> patch307Async(final ServiceCallback<Void> serviceCallback);

    /**
     * Patch redirected with 307, resulting in a 200 after redirect.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> patch307Async();

    /**
     * Patch redirected with 307, resulting in a 200 after redirect.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsPatch307Headers>> patch307WithServiceResponseAsync();
    /**
     * Patch redirected with 307, resulting in a 200 after redirect.
     *
     * @param booleanValue Simple boolean value true
     */
    void patch307(Boolean booleanValue);

    /**
     * Patch redirected with 307, resulting in a 200 after redirect.
     *
     * @param booleanValue Simple boolean value true
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> patch307Async(Boolean booleanValue, final ServiceCallback<Void> serviceCallback);

    /**
     * Patch redirected with 307, resulting in a 200 after redirect.
     *
     * @param booleanValue Simple boolean value true
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> patch307Async(Boolean booleanValue);

    /**
     * Patch redirected with 307, resulting in a 200 after redirect.
     *
     * @param booleanValue Simple boolean value true
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsPatch307Headers>> patch307WithServiceResponseAsync(Boolean booleanValue);

    /**
     * Post redirected with 307, resulting in a 200 after redirect.
     *
     */
    void post307();

    /**
     * Post redirected with 307, resulting in a 200 after redirect.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> post307Async(final ServiceCallback<Void> serviceCallback);

    /**
     * Post redirected with 307, resulting in a 200 after redirect.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> post307Async();

    /**
     * Post redirected with 307, resulting in a 200 after redirect.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsPost307Headers>> post307WithServiceResponseAsync();
    /**
     * Post redirected with 307, resulting in a 200 after redirect.
     *
     * @param booleanValue Simple boolean value true
     */
    void post307(Boolean booleanValue);

    /**
     * Post redirected with 307, resulting in a 200 after redirect.
     *
     * @param booleanValue Simple boolean value true
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> post307Async(Boolean booleanValue, final ServiceCallback<Void> serviceCallback);

    /**
     * Post redirected with 307, resulting in a 200 after redirect.
     *
     * @param booleanValue Simple boolean value true
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> post307Async(Boolean booleanValue);

    /**
     * Post redirected with 307, resulting in a 200 after redirect.
     *
     * @param booleanValue Simple boolean value true
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsPost307Headers>> post307WithServiceResponseAsync(Boolean booleanValue);

    /**
     * Delete redirected with 307, resulting in a 200 after redirect.
     *
     */
    void delete307();

    /**
     * Delete redirected with 307, resulting in a 200 after redirect.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> delete307Async(final ServiceCallback<Void> serviceCallback);

    /**
     * Delete redirected with 307, resulting in a 200 after redirect.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> delete307Async();

    /**
     * Delete redirected with 307, resulting in a 200 after redirect.
     *
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsDelete307Headers>> delete307WithServiceResponseAsync();
    /**
     * Delete redirected with 307, resulting in a 200 after redirect.
     *
     * @param booleanValue Simple boolean value true
     */
    void delete307(Boolean booleanValue);

    /**
     * Delete redirected with 307, resulting in a 200 after redirect.
     *
     * @param booleanValue Simple boolean value true
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link ServiceFuture} object
     */
    ServiceFuture<Void> delete307Async(Boolean booleanValue, final ServiceCallback<Void> serviceCallback);

    /**
     * Delete redirected with 307, resulting in a 200 after redirect.
     *
     * @param booleanValue Simple boolean value true
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<Void> delete307Async(Boolean booleanValue);

    /**
     * Delete redirected with 307, resulting in a 200 after redirect.
     *
     * @param booleanValue Simple boolean value true
     * @return the {@link ServiceResponseWithHeaders} object if successful.
     */
    Observable<ServiceResponseWithHeaders<Void, HttpRedirectsDelete307Headers>> delete307WithServiceResponseAsync(Boolean booleanValue);

}