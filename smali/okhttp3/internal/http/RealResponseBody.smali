.class public final Lokhttp3/internal/http/RealResponseBody;
.super Lokhttp3/ResponseBody;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final contentLength:J

.field public final contentTypeString:Ljava/lang/Object;

.field public final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLokio/RealBufferedSource;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/http/RealResponseBody;->$r8$classId:I

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/Object;

    iput-wide p2, p0, Lokhttp3/internal/http/RealResponseBody;->contentLength:J

    iput-object p4, p0, Lokhttp3/internal/http/RealResponseBody;->source:Lokio/BufferedSource;

    return-void
.end method

.method public constructor <init>(Lokhttp3/MediaType;JLokio/BufferedSource;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/internal/http/RealResponseBody;->$r8$classId:I

    iput-object p1, p0, Lokhttp3/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/Object;

    iput-wide p2, p0, Lokhttp3/internal/http/RealResponseBody;->contentLength:J

    iput-object p4, p0, Lokhttp3/internal/http/RealResponseBody;->source:Lokio/BufferedSource;

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget v0, p0, Lokhttp3/internal/http/RealResponseBody;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lokhttp3/internal/http/RealResponseBody;->contentLength:J

    return-wide v0

    :pswitch_0
    iget-wide v0, p0, Lokhttp3/internal/http/RealResponseBody;->contentLength:J

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 1

    iget v0, p0, Lokhttp3/internal/http/RealResponseBody;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lokhttp3/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/Object;

    check-cast p0, Lokhttp3/MediaType;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lokhttp3/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final source()Lokio/BufferedSource;
    .locals 1

    iget v0, p0, Lokhttp3/internal/http/RealResponseBody;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lokhttp3/internal/http/RealResponseBody;->source:Lokio/BufferedSource;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lokhttp3/internal/http/RealResponseBody;->source:Lokio/BufferedSource;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
