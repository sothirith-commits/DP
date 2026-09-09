.class public final Lcom/umeng/commonsdk/statistics/proto/Response;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/analytics/pro/bq;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final IMPRINT_FIELD_DESC:Lcom/umeng/analytics/pro/ck;

.field public static final MSG_FIELD_DESC:Lcom/umeng/analytics/pro/ck;

.field public static final RESP_CODE_FIELD_DESC:Lcom/umeng/analytics/pro/ck;

.field public static final schemes:Ljava/util/HashMap;

.field private static final serialVersionUID:J = -0x3f22482b0751777fL


# instance fields
.field private __isset_bitfield:B

.field public imprint:Lcom/umeng/commonsdk/statistics/proto/d;

.field public msg:Ljava/lang/String;

.field private optionals:[Lcom/umeng/commonsdk/statistics/proto/Response$e;

.field public resp_code:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v1, "resp_code"

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->RESP_CODE_FIELD_DESC:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v4, "msg"

    const/16 v5, 0xb

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->MSG_FIELD_DESC:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const/16 v7, 0xc

    const-string v8, "imprint"

    const/4 v9, 0x3

    invoke-direct {v0, v8, v7, v9}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->IMPRINT_FIELD_DESC:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->schemes:Ljava/util/HashMap;

    new-instance v7, Lcom/umeng/commonsdk/statistics/proto/Response$b;

    const/4 v9, 0x0

    invoke-direct {v7, v9}, Lcom/umeng/commonsdk/statistics/proto/Response$b;-><init>(I)V

    const-class v10, Lcom/umeng/analytics/pro/cz;

    invoke-virtual {v0, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/umeng/commonsdk/statistics/proto/Response$d;

    invoke-direct {v7, v9}, Lcom/umeng/commonsdk/statistics/proto/Response$d;-><init>(I)V

    const-class v10, Lcom/umeng/analytics/pro/da;

    invoke-virtual {v0, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v7, Lcom/umeng/commonsdk/statistics/proto/Response$e;

    invoke-direct {v0, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v7, Lcom/umeng/commonsdk/statistics/proto/Response$e;->a:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    new-instance v10, Lcom/umeng/analytics/pro/cc;

    new-instance v11, Lcom/umeng/analytics/pro/cd;

    invoke-direct {v11, v2, v9}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v10, v1, v3, v11}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v7, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/Response$e;->b:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    new-instance v2, Lcom/umeng/analytics/pro/cc;

    new-instance v3, Lcom/umeng/analytics/pro/cd;

    invoke-direct {v3, v5, v9}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v2, v4, v6, v3}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/Response$e;->c:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    new-instance v2, Lcom/umeng/analytics/pro/cc;

    new-instance v3, Lcom/umeng/analytics/pro/ch;

    const-class v4, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v3, v4}, Lcom/umeng/analytics/pro/ch;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v8, v6, v3}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-class v1, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/cc;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response$e;->b:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/Response$e;->c:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    filled-new-array {v0, v1}, [Lcom/umeng/commonsdk/statistics/proto/Response$e;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->optionals:[Lcom/umeng/commonsdk/statistics/proto/Response$e;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    new-instance v0, Lcom/umeng/analytics/pro/cj;

    new-instance v1, Lcom/umeng/analytics/pro/db;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/dd;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/umeng/analytics/pro/db;->b:Ljava/io/OutputStream;

    iput-object p1, v1, Lcom/umeng/analytics/pro/db;->a:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/cj;-><init>(Lcom/umeng/analytics/pro/db;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->read(Lcom/umeng/analytics/pro/cp;)V
    :try_end_0
    .catch Lcom/umeng/analytics/pro/bw; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/umeng/analytics/pro/cj;

    new-instance v1, Lcom/umeng/analytics/pro/db;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/db;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/cj;-><init>(Lcom/umeng/analytics/pro/db;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->write(Lcom/umeng/analytics/pro/cp;)V
    :try_end_0
    .catch Lcom/umeng/analytics/pro/bw; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final isSetResp_code()Z
    .locals 1

    iget-byte p0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/umeng/analytics/pro/bn;->a(BI)Z

    move-result p0

    return p0
.end method

.method public final read(Lcom/umeng/analytics/pro/cp;)V
    .locals 2

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->schemes:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lcom/umeng/analytics/pro/cz;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/cy;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/cy;->b()Lcom/umeng/analytics/pro/cx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/cx;->b(Lcom/umeng/analytics/pro/cp;Lcom/umeng/analytics/pro/bq;)V

    return-void
.end method

.method public final setResp_codeIsSet()V
    .locals 2

    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/bn;->a(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response(resp_code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "null"

    if-eqz v1, :cond_2

    const-string v1, ", msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    if-eqz v1, :cond_4

    const-string v1, ", imprint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    if-nez p0, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final write(Lcom/umeng/analytics/pro/cp;)V
    .locals 2

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->schemes:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lcom/umeng/analytics/pro/cz;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/cy;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/cy;->b()Lcom/umeng/analytics/pro/cx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/cx;->a(Lcom/umeng/analytics/pro/cp;Lcom/umeng/analytics/pro/bq;)V

    return-void
.end method
