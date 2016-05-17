/**
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License. See License.txt in the project root for
 * license information.
 *
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

package fixtures.bodycomplex;

import com.google.common.reflect.TypeToken;
import com.microsoft.rest.ServiceCall;
import com.microsoft.rest.ServiceCallback;
import com.microsoft.rest.ServiceResponse;
import com.microsoft.rest.ServiceResponseBuilder;
import com.microsoft.rest.ServiceResponseCallback;
import com.microsoft.rest.Validator;
import fixtures.bodycomplex.models.Basic;
import fixtures.bodycomplex.models.ErrorException;
import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.PUT;
import retrofit2.http.Query;
import retrofit2.Response;
import retrofit2.Retrofit;

/**
 * An instance of this class provides access to all the operations defined
 * in BasicOperations.
 */
public final class BasicOperationsImpl implements BasicOperations {
    /** The Retrofit service to perform REST calls. */
    private BasicService service;
    /** The service client containing this operation class. */
    private AutoRestComplexTestService client;

    /**
     * Initializes an instance of BasicOperations.
     *
     * @param retrofit the Retrofit instance built from a Retrofit Builder.
     * @param client the instance of the service client containing this operation class.
     */
    public BasicOperationsImpl(Retrofit retrofit, AutoRestComplexTestService client) {
        this.service = retrofit.create(BasicService.class);
        this.client = client;
    }

    /**
     * The interface defining all the services for BasicOperations to be
     * used by Retrofit to perform actually REST calls.
     */
    interface BasicService {
        @Headers("Content-Type: application/json; charset=utf-8")
        @GET("complex/basic/valid")
        Call<ResponseBody> getValid();

        @Headers("Content-Type: application/json; charset=utf-8")
        @PUT("complex/basic/valid")
        Call<ResponseBody> putValid(@Body Basic complexBody, @Query("api-version") String apiVersion);

        @Headers("Content-Type: application/json; charset=utf-8")
        @GET("complex/basic/invalid")
        Call<ResponseBody> getInvalid();

        @Headers("Content-Type: application/json; charset=utf-8")
        @GET("complex/basic/empty")
        Call<ResponseBody> getEmpty();

        @Headers("Content-Type: application/json; charset=utf-8")
        @GET("complex/basic/null")
        Call<ResponseBody> getNull();

        @Headers("Content-Type: application/json; charset=utf-8")
        @GET("complex/basic/notprovided")
        Call<ResponseBody> getNotProvided();

    }

    /**
     * Get complex type {id: 2, name: 'abc', color: 'YELLOW'}.
     *
     * @throws ErrorException exception thrown from REST call
     * @throws IOException exception thrown from serialization/deserialization
     * @return the Basic object wrapped in {@link ServiceResponse} if successful.
     */
    public ServiceResponse<Basic> getValid() throws ErrorException, IOException {
        Call<ResponseBody> call = service.getValid();
        return getValidDelegate(call.execute());
    }

    /**
     * Get complex type {id: 2, name: 'abc', color: 'YELLOW'}.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @throws IllegalArgumentException thrown if callback is null
     * @return the {@link Call} object
     */
    public ServiceCall getValidAsync(final ServiceCallback<Basic> serviceCallback) throws IllegalArgumentException {
        if (serviceCallback == null) {
            throw new IllegalArgumentException("ServiceCallback is required for async calls.");
        }
        Call<ResponseBody> call = service.getValid();
        final ServiceCall serviceCall = new ServiceCall(call);
        call.enqueue(new ServiceResponseCallback<Basic>(serviceCallback) {
            @Override
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                try {
                    serviceCallback.success(getValidDelegate(response));
                } catch (ErrorException | IOException exception) {
                    serviceCallback.failure(exception);
                }
            }
        });
        return serviceCall;
    }

    private ServiceResponse<Basic> getValidDelegate(Response<ResponseBody> response) throws ErrorException, IOException {
        return new ServiceResponseBuilder<Basic, ErrorException>(this.client.getMapperAdapter())
                .register(200, new TypeToken<Basic>() { }.getType())
                .registerError(ErrorException.class)
                .build(response);
    }

    /**
     * Please put {id: 2, name: 'abc', color: 'Magenta'}.
     *
     * @param complexBody Please put {id: 2, name: 'abc', color: 'Magenta'}
     * @throws ErrorException exception thrown from REST call
     * @throws IOException exception thrown from serialization/deserialization
     * @throws IllegalArgumentException exception thrown from invalid parameters
     * @return the {@link ServiceResponse} object if successful.
     */
    public ServiceResponse<Void> putValid(Basic complexBody) throws ErrorException, IOException, IllegalArgumentException {
        if (complexBody == null) {
            throw new IllegalArgumentException("Parameter complexBody is required and cannot be null.");
        }
        Validator.validate(complexBody);
        Call<ResponseBody> call = service.putValid(complexBody, this.client.getApiVersion());
        return putValidDelegate(call.execute());
    }

    /**
     * Please put {id: 2, name: 'abc', color: 'Magenta'}.
     *
     * @param complexBody Please put {id: 2, name: 'abc', color: 'Magenta'}
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @throws IllegalArgumentException thrown if callback is null
     * @return the {@link Call} object
     */
    public ServiceCall putValidAsync(Basic complexBody, final ServiceCallback<Void> serviceCallback) throws IllegalArgumentException {
        if (serviceCallback == null) {
            throw new IllegalArgumentException("ServiceCallback is required for async calls.");
        }
        if (complexBody == null) {
            serviceCallback.failure(new IllegalArgumentException("Parameter complexBody is required and cannot be null."));
            return null;
        }
        Validator.validate(complexBody, serviceCallback);
        Call<ResponseBody> call = service.putValid(complexBody, this.client.getApiVersion());
        final ServiceCall serviceCall = new ServiceCall(call);
        call.enqueue(new ServiceResponseCallback<Void>(serviceCallback) {
            @Override
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                try {
                    serviceCallback.success(putValidDelegate(response));
                } catch (ErrorException | IOException exception) {
                    serviceCallback.failure(exception);
                }
            }
        });
        return serviceCall;
    }

    private ServiceResponse<Void> putValidDelegate(Response<ResponseBody> response) throws ErrorException, IOException, IllegalArgumentException {
        return new ServiceResponseBuilder<Void, ErrorException>(this.client.getMapperAdapter())
                .register(200, new TypeToken<Void>() { }.getType())
                .registerError(ErrorException.class)
                .build(response);
    }

    /**
     * Get a basic complex type that is invalid for the local strong type.
     *
     * @throws ErrorException exception thrown from REST call
     * @throws IOException exception thrown from serialization/deserialization
     * @return the Basic object wrapped in {@link ServiceResponse} if successful.
     */
    public ServiceResponse<Basic> getInvalid() throws ErrorException, IOException {
        Call<ResponseBody> call = service.getInvalid();
        return getInvalidDelegate(call.execute());
    }

    /**
     * Get a basic complex type that is invalid for the local strong type.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @throws IllegalArgumentException thrown if callback is null
     * @return the {@link Call} object
     */
    public ServiceCall getInvalidAsync(final ServiceCallback<Basic> serviceCallback) throws IllegalArgumentException {
        if (serviceCallback == null) {
            throw new IllegalArgumentException("ServiceCallback is required for async calls.");
        }
        Call<ResponseBody> call = service.getInvalid();
        final ServiceCall serviceCall = new ServiceCall(call);
        call.enqueue(new ServiceResponseCallback<Basic>(serviceCallback) {
            @Override
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                try {
                    serviceCallback.success(getInvalidDelegate(response));
                } catch (ErrorException | IOException exception) {
                    serviceCallback.failure(exception);
                }
            }
        });
        return serviceCall;
    }

    private ServiceResponse<Basic> getInvalidDelegate(Response<ResponseBody> response) throws ErrorException, IOException {
        return new ServiceResponseBuilder<Basic, ErrorException>(this.client.getMapperAdapter())
                .register(200, new TypeToken<Basic>() { }.getType())
                .registerError(ErrorException.class)
                .build(response);
    }

    /**
     * Get a basic complex type that is empty.
     *
     * @throws ErrorException exception thrown from REST call
     * @throws IOException exception thrown from serialization/deserialization
     * @return the Basic object wrapped in {@link ServiceResponse} if successful.
     */
    public ServiceResponse<Basic> getEmpty() throws ErrorException, IOException {
        Call<ResponseBody> call = service.getEmpty();
        return getEmptyDelegate(call.execute());
    }

    /**
     * Get a basic complex type that is empty.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @throws IllegalArgumentException thrown if callback is null
     * @return the {@link Call} object
     */
    public ServiceCall getEmptyAsync(final ServiceCallback<Basic> serviceCallback) throws IllegalArgumentException {
        if (serviceCallback == null) {
            throw new IllegalArgumentException("ServiceCallback is required for async calls.");
        }
        Call<ResponseBody> call = service.getEmpty();
        final ServiceCall serviceCall = new ServiceCall(call);
        call.enqueue(new ServiceResponseCallback<Basic>(serviceCallback) {
            @Override
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                try {
                    serviceCallback.success(getEmptyDelegate(response));
                } catch (ErrorException | IOException exception) {
                    serviceCallback.failure(exception);
                }
            }
        });
        return serviceCall;
    }

    private ServiceResponse<Basic> getEmptyDelegate(Response<ResponseBody> response) throws ErrorException, IOException {
        return new ServiceResponseBuilder<Basic, ErrorException>(this.client.getMapperAdapter())
                .register(200, new TypeToken<Basic>() { }.getType())
                .registerError(ErrorException.class)
                .build(response);
    }

    /**
     * Get a basic complex type whose properties are null.
     *
     * @throws ErrorException exception thrown from REST call
     * @throws IOException exception thrown from serialization/deserialization
     * @return the Basic object wrapped in {@link ServiceResponse} if successful.
     */
    public ServiceResponse<Basic> getNull() throws ErrorException, IOException {
        Call<ResponseBody> call = service.getNull();
        return getNullDelegate(call.execute());
    }

    /**
     * Get a basic complex type whose properties are null.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @throws IllegalArgumentException thrown if callback is null
     * @return the {@link Call} object
     */
    public ServiceCall getNullAsync(final ServiceCallback<Basic> serviceCallback) throws IllegalArgumentException {
        if (serviceCallback == null) {
            throw new IllegalArgumentException("ServiceCallback is required for async calls.");
        }
        Call<ResponseBody> call = service.getNull();
        final ServiceCall serviceCall = new ServiceCall(call);
        call.enqueue(new ServiceResponseCallback<Basic>(serviceCallback) {
            @Override
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                try {
                    serviceCallback.success(getNullDelegate(response));
                } catch (ErrorException | IOException exception) {
                    serviceCallback.failure(exception);
                }
            }
        });
        return serviceCall;
    }

    private ServiceResponse<Basic> getNullDelegate(Response<ResponseBody> response) throws ErrorException, IOException {
        return new ServiceResponseBuilder<Basic, ErrorException>(this.client.getMapperAdapter())
                .register(200, new TypeToken<Basic>() { }.getType())
                .registerError(ErrorException.class)
                .build(response);
    }

    /**
     * Get a basic complex type while the server doesn't provide a response payload.
     *
     * @throws ErrorException exception thrown from REST call
     * @throws IOException exception thrown from serialization/deserialization
     * @return the Basic object wrapped in {@link ServiceResponse} if successful.
     */
    public ServiceResponse<Basic> getNotProvided() throws ErrorException, IOException {
        Call<ResponseBody> call = service.getNotProvided();
        return getNotProvidedDelegate(call.execute());
    }

    /**
     * Get a basic complex type while the server doesn't provide a response payload.
     *
     * @param serviceCallback the async ServiceCallback to handle successful and failed responses.
     * @throws IllegalArgumentException thrown if callback is null
     * @return the {@link Call} object
     */
    public ServiceCall getNotProvidedAsync(final ServiceCallback<Basic> serviceCallback) throws IllegalArgumentException {
        if (serviceCallback == null) {
            throw new IllegalArgumentException("ServiceCallback is required for async calls.");
        }
        Call<ResponseBody> call = service.getNotProvided();
        final ServiceCall serviceCall = new ServiceCall(call);
        call.enqueue(new ServiceResponseCallback<Basic>(serviceCallback) {
            @Override
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                try {
                    serviceCallback.success(getNotProvidedDelegate(response));
                } catch (ErrorException | IOException exception) {
                    serviceCallback.failure(exception);
                }
            }
        });
        return serviceCall;
    }

    private ServiceResponse<Basic> getNotProvidedDelegate(Response<ResponseBody> response) throws ErrorException, IOException {
        return new ServiceResponseBuilder<Basic, ErrorException>(this.client.getMapperAdapter())
                .register(200, new TypeToken<Basic>() { }.getType())
                .registerError(ErrorException.class)
                .build(response);
    }

}