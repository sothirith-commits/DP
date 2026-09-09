.class public final Lretrofit2/ParameterHandler$Field;
.super Lretrofit2/ParameterHandler;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final encoded:Z

.field public final name:Ljava/lang/String;

.field public final valueConverter:Lretrofit2/Converter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lretrofit2/BuiltInConverters$ToStringConverter;ZI)V
    .locals 0

    iput p4, p0, Lretrofit2/ParameterHandler$Field;->$r8$classId:I

    packed-switch p4, :pswitch_data_0

    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    const-string p4, "name == null"

    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lretrofit2/ParameterHandler$Field;->name:Ljava/lang/String;

    iput-object p2, p0, Lretrofit2/ParameterHandler$Field;->valueConverter:Lretrofit2/Converter;

    iput-boolean p3, p0, Lretrofit2/ParameterHandler$Field;->encoded:Z

    return-void

    :pswitch_0
    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    const-string p4, "name == null"

    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lretrofit2/ParameterHandler$Field;->name:Ljava/lang/String;

    iput-object p2, p0, Lretrofit2/ParameterHandler$Field;->valueConverter:Lretrofit2/Converter;

    iput-boolean p3, p0, Lretrofit2/ParameterHandler$Field;->encoded:Z

    return-void

    :pswitch_1
    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    const-string p4, "name == null"

    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lretrofit2/ParameterHandler$Field;->name:Ljava/lang/String;

    iput-object p2, p0, Lretrofit2/ParameterHandler$Field;->valueConverter:Lretrofit2/Converter;

    iput-boolean p3, p0, Lretrofit2/ParameterHandler$Field;->encoded:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lretrofit2/ParameterHandler$Field;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lretrofit2/ParameterHandler$Field;->valueConverter:Lretrofit2/Converter;

    invoke-interface {v0, p2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lretrofit2/ParameterHandler$Field;->name:Ljava/lang/String;

    iget-boolean p0, p0, Lretrofit2/ParameterHandler$Field;->encoded:Z

    invoke-virtual {p1, v0, p2, p0}, Lretrofit2/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :pswitch_0
    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lretrofit2/ParameterHandler$Field;->valueConverter:Lretrofit2/Converter;

    invoke-interface {v0, p2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lretrofit2/ParameterHandler$Field;->name:Ljava/lang/String;

    iget-boolean p0, p0, Lretrofit2/ParameterHandler$Field;->encoded:Z

    invoke-virtual {p1, v0, p2, p0}, Lretrofit2/RequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void

    :pswitch_1
    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lretrofit2/ParameterHandler$Field;->valueConverter:Lretrofit2/Converter;

    invoke-interface {v0, p2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lretrofit2/ParameterHandler$Field;->name:Ljava/lang/String;

    iget-boolean p0, p0, Lretrofit2/ParameterHandler$Field;->encoded:Z

    invoke-virtual {p1, v0, p2, p0}, Lretrofit2/RequestBuilder;->addFormField(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
