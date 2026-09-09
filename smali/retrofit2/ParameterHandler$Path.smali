.class public final Lretrofit2/ParameterHandler$Path;
.super Lretrofit2/ParameterHandler;
.source "SourceFile"


# instance fields
.field public final encoded:Z

.field public final method:Ljava/lang/reflect/Method;

.field public final name:Ljava/lang/String;

.field public final p:I

.field public final valueConverter:Lretrofit2/Converter;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;ILjava/lang/String;Lretrofit2/BuiltInConverters$ToStringConverter;Z)V
    .locals 0

    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    iput-object p1, p0, Lretrofit2/ParameterHandler$Path;->method:Ljava/lang/reflect/Method;

    iput p2, p0, Lretrofit2/ParameterHandler$Path;->p:I

    const-string p1, "name == null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lretrofit2/ParameterHandler$Path;->name:Ljava/lang/String;

    iput-object p4, p0, Lretrofit2/ParameterHandler$Path;->valueConverter:Lretrofit2/Converter;

    iput-boolean p5, p0, Lretrofit2/ParameterHandler$Path;->encoded:Z

    return-void
.end method


# virtual methods
.method public final apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    iget-object v4, v0, Lretrofit2/ParameterHandler$Path;->name:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v5, v0, Lretrofit2/ParameterHandler$Path;->valueConverter:Lretrofit2/Converter;

    invoke-interface {v5, v2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, v1, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v5, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_8

    invoke-virtual {v2, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    iget-boolean v8, v0, Lretrofit2/ParameterHandler$Path;->encoded:Z

    const/16 v9, 0x25

    const/16 v10, 0x2f

    const/4 v11, -0x1

    const-string v12, " \"<>^`{}|\\?#"

    const/16 v13, 0x7f

    const/16 v14, 0x20

    if-lt v7, v14, :cond_1

    if-ge v7, v13, :cond_1

    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ne v15, v11, :cond_1

    if-nez v8, :cond_0

    if-eq v7, v10, :cond_1

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, v2, v3, v6}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)V

    const/4 v3, 0x0

    :goto_2
    if-ge v6, v5, :cond_7

    invoke-virtual {v2, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    if-eqz v8, :cond_2

    const/16 v15, 0x9

    if-eq v7, v15, :cond_6

    const/16 v15, 0xa

    if-eq v7, v15, :cond_6

    const/16 v15, 0xc

    if-eq v7, v15, :cond_6

    const/16 v15, 0xd

    if-ne v7, v15, :cond_2

    goto :goto_5

    :cond_2
    if-lt v7, v14, :cond_4

    if-ge v7, v13, :cond_4

    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ne v15, v11, :cond_4

    if-nez v8, :cond_3

    if-eq v7, v10, :cond_4

    if-ne v7, v9, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v7}, Lokio/Buffer;->writeUtf8CodePoint(I)V

    goto :goto_5

    :cond_4
    :goto_3
    if-nez v3, :cond_5

    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    :cond_5
    invoke-virtual {v3, v7}, Lokio/Buffer;->writeUtf8CodePoint(I)V

    :goto_4
    invoke-virtual {v3}, Lokio/Buffer;->exhausted()Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    move-result v15

    and-int/lit16 v10, v15, 0xff

    invoke-virtual {v0, v9}, Lokio/Buffer;->writeByte(I)V

    sget-object v16, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v16, v10

    invoke-virtual {v0, v10}, Lokio/Buffer;->writeByte(I)V

    and-int/lit8 v10, v15, 0xf

    aget-char v10, v16, v10

    invoke-virtual {v0, v10}, Lokio/Buffer;->writeByte(I)V

    const/16 v10, 0x2f

    goto :goto_4

    :cond_6
    :goto_5
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v6, v7

    const/16 v10, 0x2f

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_8
    move-object v0, v2

    :goto_6
    iget-object v3, v1, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lretrofit2/RequestBuilder;->PATH_TRAVERSAL:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_9

    iput-object v0, v1, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "@Path parameters shouldn\'t perform path traversal (\'.\' or \'..\'): "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    const-string v1, "Path parameter \""

    const-string v2, "\" value must not be null."

    invoke-static {v1, v4, v2}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, v0, Lretrofit2/ParameterHandler$Path;->method:Ljava/lang/reflect/Method;

    iget v0, v0, Lretrofit2/ParameterHandler$Path;->p:I

    invoke-static {v3, v0, v1, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method
