.class public abstract Lretrofit2/ServiceMethod;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseAnnotations(Lretrofit2/Retrofit;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lretrofit2/HttpServiceMethod;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v6, Lretrofit2/RequestFactory$Builder;

    move-object/from16 v7, p1

    invoke-direct {v6, v0, v7, v1}, Lretrofit2/RequestFactory$Builder;-><init>(Lretrofit2/Retrofit;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    iget-object v7, v6, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    array-length v8, v7

    move v9, v4

    :goto_0
    const-string v10, "HEAD"

    iget-object v15, v6, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    if-ge v9, v8, :cond_12

    aget-object v12, v7, v9

    instance-of v13, v12, Lretrofit2/http/DELETE;

    if-eqz v13, :cond_0

    check-cast v12, Lretrofit2/http/DELETE;

    invoke-interface {v12}, Lretrofit2/http/DELETE;->value()Ljava/lang/String;

    move-result-object v10

    const-string v11, "DELETE"

    invoke-virtual {v6, v11, v10, v4}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    move/from16 v16, v8

    goto/16 :goto_4

    :cond_0
    instance-of v13, v12, Lretrofit2/http/GET;

    if-eqz v13, :cond_1

    check-cast v12, Lretrofit2/http/GET;

    invoke-interface {v12}, Lretrofit2/http/GET;->value()Ljava/lang/String;

    move-result-object v10

    const-string v11, "GET"

    invoke-virtual {v6, v11, v10, v4}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    instance-of v13, v12, Lretrofit2/http/HEAD;

    if-eqz v13, :cond_2

    check-cast v12, Lretrofit2/http/HEAD;

    invoke-interface {v12}, Lretrofit2/http/HEAD;->value()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11, v4}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    instance-of v10, v12, Lretrofit2/http/PATCH;

    if-eqz v10, :cond_3

    check-cast v12, Lretrofit2/http/PATCH;

    invoke-interface {v12}, Lretrofit2/http/PATCH;->value()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PATCH"

    invoke-virtual {v6, v11, v10, v5}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    instance-of v10, v12, Lretrofit2/http/POST;

    if-eqz v10, :cond_4

    check-cast v12, Lretrofit2/http/POST;

    invoke-interface {v12}, Lretrofit2/http/POST;->value()Ljava/lang/String;

    move-result-object v10

    const-string v11, "POST"

    invoke-virtual {v6, v11, v10, v5}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    instance-of v10, v12, Lretrofit2/http/PUT;

    if-eqz v10, :cond_5

    check-cast v12, Lretrofit2/http/PUT;

    invoke-interface {v12}, Lretrofit2/http/PUT;->value()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PUT"

    invoke-virtual {v6, v11, v10, v5}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    instance-of v10, v12, Lretrofit2/http/OPTIONS;

    if-eqz v10, :cond_6

    check-cast v12, Lretrofit2/http/OPTIONS;

    invoke-interface {v12}, Lretrofit2/http/OPTIONS;->value()Ljava/lang/String;

    move-result-object v10

    const-string v11, "OPTIONS"

    invoke-virtual {v6, v11, v10, v4}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    instance-of v10, v12, Lretrofit2/http/HTTP;

    if-eqz v10, :cond_7

    check-cast v12, Lretrofit2/http/HTTP;

    invoke-interface {v12}, Lretrofit2/http/HTTP;->method()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12}, Lretrofit2/http/HTTP;->path()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v12}, Lretrofit2/http/HTTP;->hasBody()Z

    move-result v12

    invoke-virtual {v6, v10, v11, v12}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_7
    instance-of v10, v12, Lretrofit2/http/Headers;

    if-eqz v10, :cond_d

    check-cast v12, Lretrofit2/http/Headers;

    invoke-interface {v12}, Lretrofit2/http/Headers;->value()[Ljava/lang/String;

    move-result-object v10

    array-length v13, v10

    if-eqz v13, :cond_c

    invoke-interface {v12}, Lretrofit2/http/Headers;->allowUnsafeNonAsciiValues()Z

    move-result v12

    new-instance v13, Lokhttp3/Headers$Builder;

    invoke-direct {v13}, Lokhttp3/Headers$Builder;-><init>()V

    array-length v14, v10

    move v3, v4

    :goto_2
    if-ge v3, v14, :cond_b

    aget-object v11, v10, v3

    const/16 v4, 0x3a

    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v2, :cond_a

    if-eqz v4, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v2, v16, -0x1

    if-eq v4, v2, :cond_a

    move/from16 v16, v8

    const/4 v2, 0x0

    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v4, v5

    invoke-virtual {v11, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content-Type"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :try_start_0
    sget-object v4, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    iput-object v4, v6, Lretrofit2/RequestFactory$Builder;->contentType:Lokhttp3/MediaType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "Malformed content type: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v15, v0, v1, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_8
    if-eqz v12, :cond_9

    const-string v4, "name"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "value"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v4, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lokhttp3/Headers$Companion;->checkName(Ljava/lang/String;)V

    invoke-virtual {v13, v8, v2}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v13, v8, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/2addr v3, v5

    move/from16 v8, v16

    const/4 v2, -0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_a
    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    const/4 v2, 0x0

    invoke-static {v15, v2, v1, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_b
    move/from16 v16, v8

    invoke-virtual {v13}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    iput-object v2, v6, Lretrofit2/RequestFactory$Builder;->headers:Lokhttp3/Headers;

    goto :goto_4

    :cond_c
    move v3, v4

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "@Headers annotation is empty."

    invoke-static {v15, v2, v1, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_d
    move/from16 v16, v8

    instance-of v2, v12, Lretrofit2/http/Multipart;

    const-string v3, "Only one encoding annotation is allowed."

    if-eqz v2, :cond_f

    iget-boolean v2, v6, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-nez v2, :cond_e

    iput-boolean v5, v6, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    goto :goto_4

    :cond_e
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v15, v4, v3, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_f
    const/4 v2, 0x0

    const/4 v4, 0x0

    instance-of v8, v12, Lretrofit2/http/FormUrlEncoded;

    if-eqz v8, :cond_11

    iget-boolean v8, v6, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-nez v8, :cond_10

    iput-boolean v5, v6, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    goto :goto_4

    :cond_10
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v15, v4, v3, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_11
    :goto_4
    add-int/2addr v9, v5

    move/from16 v8, v16

    const/4 v2, -0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_12
    iget-object v2, v6, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    if-eqz v2, :cond_7f

    iget-boolean v2, v6, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    if-nez v2, :cond_15

    iget-boolean v2, v6, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-nez v2, :cond_14

    iget-boolean v2, v6, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-nez v2, :cond_13

    goto :goto_5

    :cond_13
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    const/4 v3, 0x0

    invoke-static {v15, v3, v1, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_14
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-static {v15, v3, v1, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_15
    :goto_5
    iget-object v2, v6, Lretrofit2/RequestFactory$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    array-length v3, v2

    new-array v4, v3, [Lretrofit2/ParameterHandler;

    iput-object v4, v6, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    add-int/lit8 v4, v3, -0x1

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v3, :cond_69

    iget-object v9, v6, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    iget-object v11, v6, Lretrofit2/RequestFactory$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    aget-object v11, v11, v8

    aget-object v14, v2, v8

    if-ne v8, v4, :cond_16

    move/from16 v25, v5

    goto :goto_7

    :cond_16
    const/16 v25, 0x0

    :goto_7
    if-eqz v14, :cond_66

    array-length v13, v14

    const/4 v12, 0x0

    const/16 v26, 0x0

    :goto_8
    if-ge v12, v13, :cond_65

    aget-object v5, v14, v12

    move-object/from16 v27, v2

    instance-of v2, v5, Lretrofit2/http/Url;

    move/from16 v28, v3

    const-string v3, "@Path parameters may not be used with @Url."

    move/from16 v29, v4

    const-class v4, Ljava/lang/String;

    if-eqz v2, :cond_1f

    invoke-virtual {v6, v8, v11}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    iget-boolean v2, v6, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    if-nez v2, :cond_1e

    iget-boolean v2, v6, Lretrofit2/RequestFactory$Builder;->gotPath:Z

    if-nez v2, :cond_1d

    iget-boolean v2, v6, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    if-nez v2, :cond_1c

    iget-boolean v2, v6, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    if-nez v2, :cond_1b

    iget-boolean v2, v6, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    if-nez v2, :cond_1a

    iget-object v2, v6, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    if-nez v2, :cond_19

    const/4 v2, 0x1

    iput-boolean v2, v6, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    const-class v2, Lokhttp3/HttpUrl;

    if-eq v11, v2, :cond_18

    if-eq v11, v4, :cond_18

    const-class v2, Ljava/net/URI;

    if-eq v11, v2, :cond_18

    instance-of v2, v11, Ljava/lang/Class;

    if-eqz v2, :cond_17

    move-object v2, v11

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.Uri"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_9

    :cond_17
    const-string v0, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v15, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_18
    :goto_9
    new-instance v2, Lretrofit2/ParameterHandler$Headers;

    const/4 v3, 0x1

    invoke-direct {v2, v15, v8, v3}, Lretrofit2/ParameterHandler$Headers;-><init>(Ljava/lang/reflect/Method;II)V

    move-object v0, v2

    move-object/from16 v16, v9

    move-object/from16 v19, v10

    move/from16 v20, v12

    move/from16 v21, v13

    move-object v2, v15

    :goto_a
    const/4 v1, -0x1

    goto/16 :goto_13

    :cond_19
    iget-object v0, v6, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "@Url cannot be used with @%s URL"

    invoke-static {v15, v8, v1, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1a
    const-string v0, "A @Url parameter must not come after a @QueryMap."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v15, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1b
    const/4 v1, 0x0

    const-string v0, "A @Url parameter must not come after a @QueryName."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v15, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1c
    const/4 v1, 0x0

    const-string v0, "A @Url parameter must not come after a @Query."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v15, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1d
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v15, v8, v3, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1e
    const/4 v1, 0x0

    const-string v0, "Multiple @Url method annotations found."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v15, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1f
    instance-of v2, v5, Lretrofit2/http/Path;

    move/from16 v16, v12

    iget-object v12, v6, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    if-eqz v2, :cond_27

    invoke-virtual {v6, v8, v11}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    iget-boolean v2, v6, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    if-nez v2, :cond_26

    iget-boolean v2, v6, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    if-nez v2, :cond_25

    iget-boolean v2, v6, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    if-nez v2, :cond_24

    iget-boolean v2, v6, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    if-nez v2, :cond_23

    iget-object v2, v6, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    iput-boolean v2, v6, Lretrofit2/RequestFactory$Builder;->gotPath:Z

    check-cast v5, Lretrofit2/http/Path;

    invoke-interface {v5}, Lretrofit2/http/Path;->value()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lretrofit2/RequestFactory$Builder;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, v6, Lretrofit2/RequestFactory$Builder;->relativeUrlParamNames:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v12, v11, v14}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/BuiltInConverters$ToStringConverter;

    move-result-object v23

    new-instance v3, Lretrofit2/ParameterHandler$Path;

    iget-object v4, v6, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    invoke-interface {v5}, Lretrofit2/http/Path;->encoded()Z

    move-result v24

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v8

    move-object/from16 v22, v2

    invoke-direct/range {v19 .. v24}, Lretrofit2/ParameterHandler$Path;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;Lretrofit2/BuiltInConverters$ToStringConverter;Z)V

    move-object v0, v3

    move-object/from16 v19, v10

    move/from16 v21, v13

    move-object v2, v15

    move/from16 v20, v16

    :goto_b
    const/4 v1, -0x1

    move-object/from16 v16, v9

    goto/16 :goto_13

    :cond_20
    iget-object v0, v6, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "URL \"%s\" does not contain \"{%s}\"."

    invoke-static {v15, v8, v1, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_21
    sget-object v0, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "@Path parameter name must match %s. Found: %s"

    invoke-static {v15, v8, v1, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_22
    iget-object v0, v6, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "@Path can only be used with relative url on @%s"

    invoke-static {v15, v8, v1, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_23
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v15, v8, v3, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_24
    const/4 v0, 0x0

    const-string v1, "A @Path parameter must not come after a @QueryMap."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v15, v8, v1, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_25
    const/4 v0, 0x0

    const-string v1, "A @Path parameter must not come after a @QueryName."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v15, v8, v1, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_26
    const/4 v0, 0x0

    const-string v1, "A @Path parameter must not come after a @Query."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v15, v8, v1, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_27
    instance-of v2, v5, Lretrofit2/http/Query;

    const-string v3, "<String>)"

    move/from16 v17, v13

    const-string v13, " must include generic type (e.g., "

    move-object/from16 v19, v10

    const-class v10, Ljava/lang/Iterable;

    if-eqz v2, :cond_2b

    invoke-virtual {v6, v8, v11}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    check-cast v5, Lretrofit2/http/Query;

    invoke-interface {v5}, Lretrofit2/http/Query;->value()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5}, Lretrofit2/http/Query;->encoded()Z

    move-result v4

    invoke-static {v11}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    const/4 v0, 0x1

    iput-boolean v0, v6, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    invoke-virtual {v10, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_29

    instance-of v0, v11, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_28

    move-object v0, v11

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v12, v0, v14}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/BuiltInConverters$ToStringConverter;

    move-result-object v0

    new-instance v5, Lretrofit2/ParameterHandler$Field;

    const/4 v10, 0x2

    invoke-direct {v5, v2, v0, v4, v10}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/BuiltInConverters$ToStringConverter;ZI)V

    new-instance v0, Lretrofit2/ParameterHandler$1;

    invoke-direct {v0, v5, v3}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/ParameterHandler;I)V

    :goto_c
    move-object v2, v15

    move/from16 v20, v16

    move/from16 v21, v17

    goto/16 :goto_b

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v15, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_29
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v12, v0, v14}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/BuiltInConverters$ToStringConverter;

    move-result-object v0

    new-instance v3, Lretrofit2/ParameterHandler$Field;

    const/4 v5, 0x2

    invoke-direct {v3, v2, v0, v4, v5}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/BuiltInConverters$ToStringConverter;ZI)V

    new-instance v0, Lretrofit2/ParameterHandler$1;

    const/4 v2, 0x1

    invoke-direct {v0, v3, v2}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/ParameterHandler;I)V

    goto :goto_c

    :cond_2a
    const/4 v5, 0x2

    invoke-virtual {v12, v11, v14}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/BuiltInConverters$ToStringConverter;

    move-result-object v0

    new-instance v3, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v3, v2, v0, v4, v5}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/BuiltInConverters$ToStringConverter;ZI)V

    move-object v0, v3

    goto :goto_c

    :cond_2b
    const/4 v0, 0x2

    instance-of v2, v5, Lretrofit2/http/QueryName;

    if-eqz v2, :cond_2f

    invoke-virtual {v6, v8, v11}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    check-cast v5, Lretrofit2/http/QueryName;

    invoke-interface {v5}, Lretrofit2/http/QueryName;->encoded()Z

    move-result v2

    invoke-static {v11}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v6, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    invoke-virtual {v10, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2d

    instance-of v5, v11, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_2c

    move-object v3, v11

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v12, v3, v14}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/BuiltInConverters$ToStringConverter;

    move-result-object v3

    new-instance v5, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {v5, v3, v2}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/BuiltInConverters$ToStringConverter;Z)V

    new-instance v2, Lretrofit2/ParameterHandler$1;

    invoke-direct {v2, v5, v4}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/ParameterHandler;I)V

    :goto_d
    move-object v0, v2

    goto/16 :goto_c

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v15, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_2d
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v12, v3, v14}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/BuiltInConverters$ToStringConverter;

    move-result-object v3

    new-instance v4, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {v4, v3, v2}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/BuiltInConverters$ToStringConverter;Z)V

    new-instance v2, Lretrofit2/ParameterHandler$1;

    const/4 v3, 0x1

    invoke-direct {v2, v4, v3}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/ParameterHandler;I)V

    goto :goto_d

    :cond_2e
    invoke-virtual {v12, v11, v14}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/BuiltInConverters$ToStringConverter;

    move-result-object v3

    new-instance v4, Lretrofit2/ParameterHandler$QueryName;

    invoke-direct {v4, v3, v2}, Lretrofit2/ParameterHandler$QueryName;-><init>(Lretrofit2/BuiltInConverters$ToStringConverter;Z)V

    move-object v0, v4

    goto/16 :goto_c

    :cond_2f
    instance-of v2, v5, Lretrofit2/http/QueryMap;

    const-string v0, "Map must include generic types (e.g., Map<String, String>)"

    const-class v1, Ljava/util/Map;

    if-eqz v2, :cond_33

    invoke-virtual {v6, v8, v11}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    invoke-static {v11}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v6, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-static {v11, v2}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_31

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    const/4 v0, 0x0

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    if-ne v4, v2, :cond_30

    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v12, v0, v14}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/BuiltInConverters$ToStringConverter;

    move-result-object v0

    new-instance v1, Lretrofit2/ParameterHandler$FieldMap;

    check-cast v5, Lretrofit2/http/QueryMap;

    invoke-interface {v5}, Lretrofit2/http/QueryMap;->encoded()Z

    move-result v2

    const/4 v3, 0x2

    move/from16 v20, v16

    move-object v12, v1

    move/from16 v21, v17

    move-object v13, v15

    move-object v4, v14

    move v14, v8

    move-object v5, v15

    move-object v15, v0

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-direct/range {v12 .. v17}, Lretrofit2/ParameterHandler$FieldMap;-><init>(Ljava/lang/reflect/Method;ILretrofit2/BuiltInConverters$ToStringConverter;ZI)V

    move-object v0, v1

    move-object v14, v4

    move-object v2, v5

    :goto_e
    move-object/from16 v16, v9

    goto/16 :goto_a

    :cond_30
    move-object v5, v15

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@QueryMap keys must be of type String: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_31
    move-object v5, v15

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_32
    move-object v5, v15

    const/4 v1, 0x0

    const-string v0, "@QueryMap parameter type must be Map."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_33
    move-object v2, v15

    move/from16 v20, v16

    move/from16 v21, v17

    move-object v15, v14

    instance-of v14, v5, Lretrofit2/http/Header;

    if-eqz v14, :cond_37

    invoke-virtual {v6, v8, v11}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    check-cast v5, Lretrofit2/http/Header;

    invoke-interface {v5}, Lretrofit2/http/Header;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_35

    instance-of v4, v11, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_34

    move-object v1, v11

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    const/4 v3, 0x0

    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v12, v1, v15}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/BuiltInConverters$ToStringConverter;

    move-result-object v1

    new-instance v4, Lretrofit2/ParameterHandler$Field;

    invoke-interface {v5}, Lretrofit2/http/Header;->allowUnsafeNonAsciiValues()Z

    move-result v5

    const/4 v10, 0x1

    invoke-direct {v4, v0, v1, v5, v10}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/BuiltInConverters$ToStringConverter;ZI)V

    new-instance v0, Lretrofit2/ParameterHandler$1;

    invoke-direct {v0, v4, v3}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/ParameterHandler;I)V

    :goto_f
    move-object/from16 v16, v9

    move-object v14, v15

    goto/16 :goto_a

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_35
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v12, v1, v15}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/BuiltInConverters$ToStringConverter;

    move-result-object v1

    new-instance v3, Lretrofit2/ParameterHandler$Field;

    invoke-interface {v5}, Lretrofit2/http/Header;->allowUnsafeNonAsciiValues()Z

    move-result v4

    const/4 v10, 0x1

    invoke-direct {v3, v0, v1, v4, v10}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/BuiltInConverters$ToStringConverter;ZI)V

    new-instance v0, Lretrofit2/ParameterHandler$1;

    invoke-direct {v0, v3, v10}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/ParameterHandler;I)V

    goto :goto_f

    :cond_36
    const/4 v10, 0x1

    invoke-virtual {v12, v11, v15}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/BuiltInConverters$ToStringConverter;

    move-result-object v1

    new-instance v3, Lretrofit2/ParameterHandler$Field;

    invoke-interface {v5}, Lretrofit2/http/Header;->allowUnsafeNonAsciiValues()Z

    move-result v4

    invoke-direct {v3, v0, v1, v4, v10}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/BuiltInConverters$ToStringConverter;ZI)V

    move-object v0, v3

    goto :goto_f

    :cond_37
    instance-of v14, v5, Lretrofit2/http/HeaderMap;

    if-eqz v14, :cond_3c

    const-class v3, Lokhttp3/Headers;

    if-ne v11, v3, :cond_38

    new-instance v0, Lretrofit2/ParameterHandler$Headers;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v8, v3}, Lretrofit2/ParameterHandler$Headers;-><init>(Ljava/lang/reflect/Method;II)V

    goto :goto_f

    :cond_38
    const/4 v3, 0x0

    invoke-virtual {v6, v8, v11}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    invoke-static {v11}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {v11, v10}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v10, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_3a

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-ne v4, v0, :cond_39

    const/4 v3, 0x1

    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v12, v0, v15}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/BuiltInConverters$ToStringConverter;

    move-result-object v0

    new-instance v1, Lretrofit2/ParameterHandler$FieldMap;

    check-cast v5, Lretrofit2/http/HeaderMap;

    invoke-interface {v5}, Lretrofit2/http/HeaderMap;->allowUnsafeNonAsciiValues()Z

    move-result v16

    const/16 v17, 0x1

    move-object v12, v1

    move-object v13, v2

    move v14, v8

    move-object v3, v15

    move-object v15, v0

    invoke-direct/range {v12 .. v17}, Lretrofit2/ParameterHandler$FieldMap;-><init>(Ljava/lang/reflect/Method;ILretrofit2/BuiltInConverters$ToStringConverter;ZI)V

    move-object v0, v1

    move-object v14, v3

    goto/16 :goto_e

    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "@HeaderMap keys must be of type String: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_3a
    move v1, v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_3b
    move v1, v3

    const-string v0, "@HeaderMap parameter type must be Map or Headers."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_3c
    instance-of v14, v5, Lretrofit2/http/Field;

    if-eqz v14, :cond_41

    invoke-virtual {v6, v8, v11}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    iget-boolean v0, v6, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-eqz v0, :cond_40

    check-cast v5, Lretrofit2/http/Field;

    invoke-interface {v5}, Lretrofit2/http/Field;->value()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5}, Lretrofit2/http/Field;->encoded()Z

    move-result v1

    const/4 v4, 0x1

    iput-boolean v4, v6, Lretrofit2/RequestFactory$Builder;->gotField:Z

    invoke-static {v11}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3e

    instance-of v5, v11, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_3d

    move-object v3, v11

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v12, v3, v15}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/BuiltInConverters$ToStringConverter;

    move-result-object v3

    new-instance v5, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v5, v0, v3, v1, v4}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/BuiltInConverters$ToStringConverter;ZI)V

    new-instance v0, Lretrofit2/ParameterHandler$1;

    invoke-direct {v0, v5, v4}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/ParameterHandler;I)V

    goto/16 :goto_f

    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_3e
    const/4 v3, 0x0

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v12, v4, v15}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/BuiltInConverters$ToStringConverter;

    move-result-object v4

    new-instance v5, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v5, v0, v4, v1, v3}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/BuiltInConverters$ToStringConverter;ZI)V

    new-instance v0, Lretrofit2/ParameterHandler$1;

    const/4 v1, 0x1

    invoke-direct {v0, v5, v1}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/ParameterHandler;I)V

    goto/16 :goto_f

    :cond_3f
    invoke-virtual {v12, v11, v15}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/BuiltInConverters$ToStringConverter;

    move-result-object v4

    new-instance v5, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v5, v0, v4, v1, v3}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/BuiltInConverters$ToStringConverter;ZI)V

    move-object v0, v5

    goto/16 :goto_f

    :cond_40
    const/4 v3, 0x0

    const-string v0, "@Field parameters can only be used with form encoding."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_41
    instance-of v14, v5, Lretrofit2/http/FieldMap;

    if-eqz v14, :cond_46

    invoke-virtual {v6, v8, v11}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    iget-boolean v3, v6, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-eqz v3, :cond_45

    invoke-static {v11}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-static {v11, v3}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_43

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    const/4 v0, 0x0

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v3

    if-ne v4, v3, :cond_42

    const/4 v0, 0x1

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v12, v1, v15}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/BuiltInConverters$ToStringConverter;

    move-result-object v1

    iput-boolean v0, v6, Lretrofit2/RequestFactory$Builder;->gotField:Z

    new-instance v0, Lretrofit2/ParameterHandler$FieldMap;

    check-cast v5, Lretrofit2/http/FieldMap;

    invoke-interface {v5}, Lretrofit2/http/FieldMap;->encoded()Z

    move-result v16

    const/16 v17, 0x0

    move-object v12, v0

    move-object v13, v2

    move v14, v8

    move-object v4, v15

    move-object v15, v1

    invoke-direct/range {v12 .. v17}, Lretrofit2/ParameterHandler$FieldMap;-><init>(Ljava/lang/reflect/Method;ILretrofit2/BuiltInConverters$ToStringConverter;ZI)V

    move-object v14, v4

    goto/16 :goto_e

    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@FieldMap keys must be of type String: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_43
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_44
    const/4 v1, 0x0

    const-string v0, "@FieldMap parameter type must be Map."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_45
    const/4 v1, 0x0

    const-string v0, "@FieldMap parameters can only be used with form encoding."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_46
    move-object v14, v15

    instance-of v15, v5, Lretrofit2/http/Part;

    move-object/from16 v16, v9

    const-class v9, Lokhttp3/MultipartBody$Part;

    if-eqz v15, :cond_55

    invoke-virtual {v6, v8, v11}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    iget-boolean v0, v6, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-eqz v0, :cond_54

    check-cast v5, Lretrofit2/http/Part;

    const/4 v0, 0x1

    iput-boolean v0, v6, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    invoke-interface {v5}, Lretrofit2/http/Part;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual {v10, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v4, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz v0, :cond_49

    instance-of v0, v11, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_48

    move-object v0, v11

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lretrofit2/ParameterHandler$1;

    invoke-direct {v3, v0, v1}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/ParameterHandler;I)V

    move-object v0, v3

    goto/16 :goto_a

    :cond_47
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v4, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_49
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4a

    sget-object v0, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lretrofit2/ParameterHandler$1;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/ParameterHandler;I)V

    :goto_10
    move-object v0, v1

    goto/16 :goto_a

    :cond_4a
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v8, v4, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_4b
    const/4 v0, 0x0

    invoke-virtual {v9, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4c

    sget-object v1, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    goto :goto_10

    :cond_4c
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v8, v4, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_4d
    const-string v4, "form-data; name=\""

    const-string v15, "\""

    invoke-static {v4, v0, v15}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5}, Lretrofit2/http/Part;->encoding()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Disposition"

    const-string v15, "Content-Transfer-Encoding"

    filled-new-array {v5, v0, v15, v4}, [Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lokhttp3/Headers$Companion;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v10, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    const-string v5, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v4, :cond_50

    instance-of v4, v11, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_4f

    move-object v1, v11

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    const/4 v3, 0x0

    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4e

    invoke-virtual {v12, v1, v14, v7}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    new-instance v4, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v4, v2, v8, v0, v1}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    new-instance v0, Lretrofit2/ParameterHandler$1;

    invoke-direct {v0, v4, v3}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/ParameterHandler;I)V

    goto/16 :goto_a

    :cond_4e
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, v8, v5, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_50
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_51

    invoke-virtual {v12, v1, v14, v7}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    new-instance v3, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v3, v2, v8, v0, v1}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    new-instance v0, Lretrofit2/ParameterHandler$1;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v1}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/ParameterHandler;I)V

    goto/16 :goto_a

    :cond_51
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, v8, v5, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_52
    const/4 v3, 0x0

    invoke-virtual {v9, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_53

    invoke-virtual {v12, v11, v14, v7}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    new-instance v4, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v4, v2, v8, v0, v1}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    move-object v0, v4

    goto/16 :goto_a

    :cond_53
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, v8, v5, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_54
    const/4 v3, 0x0

    const-string v0, "@Part parameters can only be used with multipart encoding."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_55
    instance-of v3, v5, Lretrofit2/http/PartMap;

    if-eqz v3, :cond_5b

    invoke-virtual {v6, v8, v11}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    iget-boolean v3, v6, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-eqz v3, :cond_5a

    const/4 v3, 0x1

    iput-boolean v3, v6, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    invoke-static {v11}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-static {v11, v10}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v10, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_58

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    const/4 v0, 0x0

    invoke-static {v0, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v10

    if-ne v4, v10, :cond_57

    invoke-static {v3, v1}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_56

    invoke-virtual {v12, v0, v14, v7}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    check-cast v5, Lretrofit2/http/PartMap;

    new-instance v1, Lretrofit2/ParameterHandler$Part;

    invoke-interface {v5}, Lretrofit2/http/PartMap;->encoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v8, v0, v3}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_56
    const-string v0, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_57
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "@PartMap keys must be of type String: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_58
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_59
    const/4 v1, 0x0

    const-string v0, "@PartMap parameter type must be Map."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5a
    const/4 v1, 0x0

    const-string v0, "@PartMap parameters can only be used with multipart encoding."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5b
    instance-of v0, v5, Lretrofit2/http/Body;

    if-eqz v0, :cond_5e

    invoke-virtual {v6, v8, v11}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    iget-boolean v0, v6, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-nez v0, :cond_5d

    iget-boolean v0, v6, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-nez v0, :cond_5d

    iget-boolean v0, v6, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    if-nez v0, :cond_5c

    :try_start_1
    invoke-virtual {v12, v11, v14, v7}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    iput-boolean v1, v6, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    new-instance v1, Lretrofit2/ParameterHandler$Body;

    invoke-direct {v1, v2, v8, v0}, Lretrofit2/ParameterHandler$Body;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;)V

    goto/16 :goto_10

    :catch_1
    move-exception v0

    move-object v1, v0

    const-string v0, "Unable to create @Body converter for %s"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v1, v8, v0, v3}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;Ljava/lang/Exception;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5c
    const-string v0, "Multiple @Body method annotations found."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5d
    const/4 v1, 0x0

    const-string v0, "@Body parameters cannot be used with form or multi-part encoding."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5e
    instance-of v0, v5, Lretrofit2/http/Tag;

    if-eqz v0, :cond_62

    invoke-virtual {v6, v8, v11}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    invoke-static {v11}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    add-int/lit8 v3, v8, -0x1

    :goto_11
    if-ltz v3, :cond_61

    iget-object v1, v6, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/ParameterHandler;

    aget-object v1, v1, v3

    instance-of v4, v1, Lretrofit2/ParameterHandler$Tag;

    if-eqz v4, :cond_5f

    check-cast v1, Lretrofit2/ParameterHandler$Tag;

    iget-object v1, v1, Lretrofit2/ParameterHandler$Tag;->cls:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    :cond_5f
    const/4 v1, -0x1

    goto :goto_12

    :cond_60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "@Tag type "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is duplicate of "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lretrofit2/Platform;->reflection:Lretrofit2/Reflection;

    invoke-virtual {v0, v3, v2}, Lretrofit2/Reflection;->describeMethodParameter(ILjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and would always overwrite its value."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :goto_12
    add-int/2addr v3, v1

    goto :goto_11

    :cond_61
    const/4 v1, -0x1

    new-instance v3, Lretrofit2/ParameterHandler$Tag;

    invoke-direct {v3, v0}, Lretrofit2/ParameterHandler$Tag;-><init>(Ljava/lang/Class;)V

    move-object v0, v3

    goto :goto_13

    :cond_62
    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_13
    if-nez v0, :cond_63

    :goto_14
    const/4 v0, 0x1

    goto :goto_15

    :cond_63
    if-nez v26, :cond_64

    move-object/from16 v26, v0

    goto :goto_14

    :goto_15
    add-int/lit8 v12, v20, 0x1

    move-object/from16 v1, p2

    move v5, v0

    move-object v15, v2

    move-object/from16 v9, v16

    move-object/from16 v10, v19

    move/from16 v13, v21

    move-object/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    move-object/from16 v0, p0

    goto/16 :goto_8

    :cond_64
    const-string v0, "Multiple Retrofit annotations found, only one allowed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_65
    move-object/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    move-object/from16 v16, v9

    move-object/from16 v19, v10

    move-object v2, v15

    const/4 v1, -0x1

    goto :goto_16

    :cond_66
    move-object/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    move-object/from16 v16, v9

    move-object/from16 v19, v10

    move-object v2, v15

    const/4 v1, -0x1

    const/16 v26, 0x0

    :goto_16
    if-nez v26, :cond_68

    if-eqz v25, :cond_67

    :try_start_2
    invoke-static {v11}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lkotlin/coroutines/Continuation;

    if-ne v0, v3, :cond_67

    const/4 v0, 0x1

    iput-boolean v0, v6, Lretrofit2/RequestFactory$Builder;->isKotlinSuspendFunction:Z
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v26, 0x0

    goto :goto_17

    :catch_2
    :cond_67
    const-string v0, "No Retrofit annotation found."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_68
    :goto_17
    aput-object v26, v16, v8

    const/4 v0, 0x1

    add-int/2addr v8, v0

    move-object/from16 v1, p2

    move v5, v0

    move-object v15, v2

    move-object/from16 v10, v19

    move-object/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    move-object/from16 v0, p0

    goto/16 :goto_6

    :cond_69
    move-object/from16 v19, v10

    move-object v2, v15

    iget-object v0, v6, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    if-nez v0, :cond_6b

    iget-boolean v0, v6, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    if-eqz v0, :cond_6a

    goto :goto_18

    :cond_6a
    iget-object v0, v6, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Missing either @%s URL or @Url parameter."

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_6b
    :goto_18
    iget-boolean v0, v6, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    if-nez v0, :cond_6d

    iget-boolean v1, v6, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-nez v1, :cond_6d

    iget-boolean v1, v6, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    if-nez v1, :cond_6d

    iget-boolean v1, v6, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    if-nez v1, :cond_6c

    goto :goto_19

    :cond_6c
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Non-body HTTP method cannot contain @Body."

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_6d
    :goto_19
    if-eqz v0, :cond_6f

    iget-boolean v0, v6, Lretrofit2/RequestFactory$Builder;->gotField:Z

    if-eqz v0, :cond_6e

    goto :goto_1a

    :cond_6e
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Form-encoded method must contain at least one @Field."

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_6f
    :goto_1a
    iget-boolean v0, v6, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    if-eqz v0, :cond_71

    iget-boolean v0, v6, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    if-eqz v0, :cond_70

    goto :goto_1b

    :cond_70
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Multipart method must contain at least one @Part."

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_71
    :goto_1b
    new-instance v2, Lretrofit2/RequestFactory;

    invoke-direct {v2, v6}, Lretrofit2/RequestFactory;-><init>(Lretrofit2/RequestFactory$Builder;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_7e

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_7d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iget-boolean v1, v2, Lretrofit2/RequestFactory;->isKotlinSuspendFunction:Z

    const-class v3, Lretrofit2/Response;

    if-eqz v1, :cond_76

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    instance-of v6, v4, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_72

    check-cast v4, Ljava/lang/reflect/WildcardType;

    invoke-interface {v4}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v5

    :cond_72
    invoke-static {v4}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lretrofit2/Call;

    if-ne v6, v3, :cond_73

    instance-of v6, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_73

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v4

    move v8, v5

    const/4 v6, 0x1

    goto :goto_1c

    :cond_73
    invoke-static {v4}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    if-eq v6, v7, :cond_75

    invoke-static {v4}, Lretrofit2/Utils;->isUnit(Ljava/lang/reflect/Type;)Z

    move-result v18

    move v6, v5

    move/from16 v8, v18

    :goto_1c
    new-instance v9, Lretrofit2/Utils$ParameterizedTypeImpl;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/reflect/Type;

    aput-object v4, v11, v5

    const/4 v4, 0x0

    invoke-direct {v9, v4, v7, v11}, Lretrofit2/Utils$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sget-object v4, Lretrofit2/SkipCallbackExecutorImpl;->INSTANCE:Lretrofit2/SkipCallbackExecutorImpl;

    const-class v4, Lretrofit2/SkipCallbackExecutor;

    invoke-static {v0, v4}, Lretrofit2/Utils;->isAnnotationPresent([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_74

    const/4 v7, 0x0

    goto :goto_1d

    :cond_74
    array-length v4, v0

    add-int/2addr v4, v10

    new-array v4, v4, [Ljava/lang/annotation/Annotation;

    sget-object v5, Lretrofit2/SkipCallbackExecutorImpl;->INSTANCE:Lretrofit2/SkipCallbackExecutorImpl;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    array-length v5, v0

    invoke-static {v0, v7, v4, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    :goto_1d
    move-object/from16 v7, p0

    move-object/from16 v4, p2

    move v5, v6

    move v6, v8

    goto :goto_1e

    :cond_75
    move v7, v5

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v7, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Suspend functions should not return Call, as they already execute asynchronously.\nChange its return type to %s"

    move-object/from16 v4, p2

    const/4 v2, 0x0

    invoke-static {v4, v2, v1, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_76
    move-object/from16 v4, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p0

    :goto_1e
    :try_start_3
    invoke-virtual {v7, v9, v0}, Lretrofit2/Retrofit;->callAdapter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    invoke-interface {v0}, Lretrofit2/CallAdapter;->responseType()Ljava/lang/reflect/Type;

    move-result-object v8

    const-class v9, Lokhttp3/Response;

    if-eq v8, v9, :cond_7c

    if-eq v8, v3, :cond_7b

    iget-object v3, v2, Lretrofit2/RequestFactory;->httpMethod:Ljava/lang/String;

    move-object/from16 v9, v19

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    const-class v3, Ljava/lang/Void;

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    invoke-static {v8}, Lretrofit2/Utils;->isUnit(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_77

    goto :goto_1f

    :cond_77
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "HEAD method must use Void or Unit as response type."

    const/4 v2, 0x0

    invoke-static {v4, v2, v1, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_78
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    :try_start_4
    invoke-virtual {v7, v8, v3}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    iget-object v3, v7, Lretrofit2/Retrofit;->callFactory:Lokhttp3/Call$Factory;

    if-nez v1, :cond_79

    new-instance v7, Lretrofit2/HttpServiceMethod$CallAdapted;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lretrofit2/HttpServiceMethod$CallAdapted;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;I)V

    goto :goto_20

    :cond_79
    if-eqz v5, :cond_7a

    new-instance v7, Lretrofit2/HttpServiceMethod$CallAdapted;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lretrofit2/HttpServiceMethod$CallAdapted;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;I)V

    goto :goto_20

    :cond_7a
    new-instance v7, Lretrofit2/HttpServiceMethod$SuspendForBody;

    move-object v1, v7

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lretrofit2/HttpServiceMethod$SuspendForBody;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;Z)V

    :goto_20
    return-object v7

    :catch_3
    move-exception v0

    move-object v1, v0

    const-string v0, "Unable to create converter for %s"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v1, v0, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_7b
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Response must include generic type (e.g., Response<String>)"

    const/4 v2, 0x0

    invoke-static {v4, v2, v1, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_7c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v4, v2, v0, v1}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :catch_4
    move-exception v0

    move-object v1, v0

    const-string v0, "Unable to create call adapter for %s"

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v1, v0, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_7d
    move-object/from16 v4, p2

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Service methods cannot return void."

    const/4 v3, 0x0

    invoke-static {v4, v3, v1, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_7e
    move-object/from16 v4, p2

    const/4 v3, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Method return type must not include a type variable or wildcard: %s"

    invoke-static {v4, v3, v1, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_7f
    move-object v2, v15

    const/4 v0, 0x0

    const/4 v3, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    invoke-static {v2, v3, v1, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public abstract invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
