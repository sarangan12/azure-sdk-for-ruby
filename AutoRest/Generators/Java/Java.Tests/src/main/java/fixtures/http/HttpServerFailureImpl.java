/**
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License. See License.txt in the project root for
 * license information.
 *
 * Code generated by Microsoft (R) AutoRest Code Generator 0.14.0.0
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

package fixtures.http;

import com.microsoft.rest.ServiceCallback;
import com.microsoft.rest.ServiceResponse;
import com.microsoft.rest.ServiceResponseBuilder;
import com.microsoft.rest.ServiceResponseCallback;
import com.microsoft.rest.ServiceResponseEmptyCallback;
import com.squareup.okhttp.ResponseBody;
import fixtures.http.models.Error;
import fixtures.http.models.ErrorException;
import java.io.IOException;
import retrofit.Call;
import retrofit.Response;
import retrofit.Retrofit;

/**
 * An instance of this class provides access to all the operations defined
 * in HttpServerFailure.
 */
public final class HttpServerFailureImpl implements HttpServerFailure {
    /** The Retrofit service to perform REST calls. */
    private HttpServerFailureService service;
    /** The service client containing this operation class. */
    private AutoRestHttpInfrastructureTestService client;

    /**
     * Initializes an instance of HttpServerFailure.
     *
     * @param retrofit the Retrofit instance built from a Retrofit Builder.
     * @param client the instance of the service client containing this operation class.
     */
    public HttpServerFailureImpl(Retrofit retrofit, AutoRestHttpInfrastructureTestService client) {
        this.service = retrofit.create(HttpServerFailureService.class);
        this.client = client;
    }

    /**
     * Return 501 status code - should be represented in the client as an error.
     *
     * @throws ErrorException exception thrown from REST call
     * @throws IOException exception thrown from serialization/deserialization
     * @return the Error object wrapped in {@link ServiceResponse} if successful.
     */
    public ServiceResponse<Error> head501() throws ErrorException, IOException {
        Call<Void> call = service.head501();
        return head501Delegate(call.execute(), null);
    }

    /**
     * Return 501 status code - should be represented in the client as an error.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link Call} object
     */
    public Call<Void> head501Async(final ServiceCallback<Error> serviceCallback) {
        Call<Void> call = service.head501();
        call.enqueue(new ServiceResponseEmptyCallback<Error>(serviceCallback) {
            @Override
            public void onResponse(Response<Void> response, Retrofit retrofit) {
                try {
                    serviceCallback.success(head501Delegate(response, retrofit));
                } catch (ErrorException | IOException exception) {
                    serviceCallback.failure(exception);
                }
            }
        });
        return call;
    }

    private ServiceResponse<Error> head501Delegate(Response<Void> response, Retrofit retrofit) throws ErrorException, IOException {
        return new ServiceResponseBuilder<Error, ErrorException>()
                .registerError(ErrorException.class)
                .buildEmpty(response, retrofit);
    }

    /**
     * Return 501 status code - should be represented in the client as an error.
     *
     * @throws ErrorException exception thrown from REST call
     * @throws IOException exception thrown from serialization/deserialization
     * @return the Error object wrapped in {@link ServiceResponse} if successful.
     */
    public ServiceResponse<Error> get501() throws ErrorException, IOException {
        Call<ResponseBody> call = service.get501();
        return get501Delegate(call.execute(), null);
    }

    /**
     * Return 501 status code - should be represented in the client as an error.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link Call} object
     */
    public Call<ResponseBody> get501Async(final ServiceCallback<Error> serviceCallback) {
        Call<ResponseBody> call = service.get501();
        call.enqueue(new ServiceResponseCallback<Error>(serviceCallback) {
            @Override
            public void onResponse(Response<ResponseBody> response, Retrofit retrofit) {
                try {
                    serviceCallback.success(get501Delegate(response, retrofit));
                } catch (ErrorException | IOException exception) {
                    serviceCallback.failure(exception);
                }
            }
        });
        return call;
    }

    private ServiceResponse<Error> get501Delegate(Response<ResponseBody> response, Retrofit retrofit) throws ErrorException, IOException {
        return new ServiceResponseBuilder<Error, ErrorException>()
                .registerError(ErrorException.class)
                .build(response, retrofit);
    }

    /**
     * Return 505 status code - should be represented in the client as an error.
     *
     * @param booleanValue Simple boolean value true
     * @throws ErrorException exception thrown from REST call
     * @throws IOException exception thrown from serialization/deserialization
     * @return the Error object wrapped in {@link ServiceResponse} if successful.
     */
    public ServiceResponse<Error> post505(Boolean booleanValue) throws ErrorException, IOException {
        Call<ResponseBody> call = service.post505(booleanValue);
        return post505Delegate(call.execute(), null);
    }

    /**
     * Return 505 status code - should be represented in the client as an error.
     *
     * @param booleanValue Simple boolean value true
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link Call} object
     */
    public Call<ResponseBody> post505Async(Boolean booleanValue, final ServiceCallback<Error> serviceCallback) {
        Call<ResponseBody> call = service.post505(booleanValue);
        call.enqueue(new ServiceResponseCallback<Error>(serviceCallback) {
            @Override
            public void onResponse(Response<ResponseBody> response, Retrofit retrofit) {
                try {
                    serviceCallback.success(post505Delegate(response, retrofit));
                } catch (ErrorException | IOException exception) {
                    serviceCallback.failure(exception);
                }
            }
        });
        return call;
    }

    private ServiceResponse<Error> post505Delegate(Response<ResponseBody> response, Retrofit retrofit) throws ErrorException, IOException {
        return new ServiceResponseBuilder<Error, ErrorException>()
                .registerError(ErrorException.class)
                .build(response, retrofit);
    }

    /**
     * Return 505 status code - should be represented in the client as an error.
     *
     * @param booleanValue Simple boolean value true
     * @throws ErrorException exception thrown from REST call
     * @throws IOException exception thrown from serialization/deserialization
     * @return the Error object wrapped in {@link ServiceResponse} if successful.
     */
    public ServiceResponse<Error> delete505(Boolean booleanValue) throws ErrorException, IOException {
        Call<ResponseBody> call = service.delete505(booleanValue);
        return delete505Delegate(call.execute(), null);
    }

    /**
     * Return 505 status code - should be represented in the client as an error.
     *
     * @param booleanValue Simple boolean value true
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @return the {@link Call} object
     */
    public Call<ResponseBody> delete505Async(Boolean booleanValue, final ServiceCallback<Error> serviceCallback) {
        Call<ResponseBody> call = service.delete505(booleanValue);
        call.enqueue(new ServiceResponseCallback<Error>(serviceCallback) {
            @Override
            public void onResponse(Response<ResponseBody> response, Retrofit retrofit) {
                try {
                    serviceCallback.success(delete505Delegate(response, retrofit));
                } catch (ErrorException | IOException exception) {
                    serviceCallback.failure(exception);
                }
            }
        });
        return call;
    }

    private ServiceResponse<Error> delete505Delegate(Response<ResponseBody> response, Retrofit retrofit) throws ErrorException, IOException {
        return new ServiceResponseBuilder<Error, ErrorException>()
                .registerError(ErrorException.class)
                .build(response, retrofit);
    }

}