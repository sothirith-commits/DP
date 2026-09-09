.class public final Lcom/umeng/commonsdk/statistics/proto/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/analytics/pro/bq;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final g:Lcom/umeng/analytics/pro/ck;

.field public static final h:Lcom/umeng/analytics/pro/ck;

.field public static final i:Lcom/umeng/analytics/pro/ck;

.field public static final j:Ljava/util/HashMap;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/e;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/lang/String;

.field private l:B


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v1, "property"

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->g:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v2, "version"

    const/16 v4, 0x8

    const/4 v5, 0x2

    invoke-direct {v0, v2, v4, v5}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->h:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v5, "checksum"

    const/16 v6, 0xb

    const/4 v7, 0x3

    invoke-direct {v0, v5, v6, v7}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->i:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->j:Ljava/util/HashMap;

    new-instance v7, Lcom/umeng/commonsdk/statistics/proto/d$b;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/umeng/commonsdk/statistics/proto/d$b;-><init>(I)V

    const-class v9, Lcom/umeng/analytics/pro/cz;

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/umeng/commonsdk/statistics/proto/d$d;

    invoke-direct {v7, v8}, Lcom/umeng/commonsdk/statistics/proto/d$d;-><init>(I)V

    const-class v9, Lcom/umeng/analytics/pro/da;

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v7, Lcom/umeng/commonsdk/statistics/proto/d$e;

    invoke-direct {v0, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v7, Lcom/umeng/commonsdk/statistics/proto/d$e;->a:Lcom/umeng/commonsdk/statistics/proto/d$e;

    new-instance v9, Lcom/umeng/analytics/pro/cc;

    new-instance v10, Lcom/umeng/analytics/pro/cf;

    new-instance v11, Lcom/umeng/analytics/pro/cd;

    invoke-direct {v11, v6, v8}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    new-instance v12, Lcom/umeng/analytics/pro/ch;

    const-class v13, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-direct {v12, v13}, Lcom/umeng/analytics/pro/ch;-><init>(Ljava/lang/Class;)V

    invoke-direct {v10, v11, v12}, Lcom/umeng/analytics/pro/cf;-><init>(Lcom/umeng/analytics/pro/cd;Lcom/umeng/analytics/pro/ch;)V

    invoke-direct {v9, v1, v3, v10}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v7, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/d$e;->b:Lcom/umeng/commonsdk/statistics/proto/d$e;

    new-instance v7, Lcom/umeng/analytics/pro/cc;

    new-instance v9, Lcom/umeng/analytics/pro/cd;

    invoke-direct {v9, v4, v8}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v7, v2, v3, v9}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v1, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/d$e;->c:Lcom/umeng/commonsdk/statistics/proto/d$e;

    new-instance v2, Lcom/umeng/analytics/pro/cc;

    new-instance v4, Lcom/umeng/analytics/pro/cd;

    invoke-direct {v4, v6, v8}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v2, v5, v3, v4}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-class v1, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/cc;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/bn;->a(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-byte p0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->l:B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/umeng/analytics/pro/bn;->a(BI)Z

    move-result p0

    return p0
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/umeng/analytics/pro/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/d;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/umeng/analytics/pro/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'property\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/d;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final read(Lcom/umeng/analytics/pro/cp;)V
    .locals 2

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->j:Ljava/util/HashMap;

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

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Imprint(property:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/d;->a:Ljava/util/Map;

    const-string v2, "null"

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "version:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/proto/d;->c:Ljava/lang/String;

    if-nez p0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final write(Lcom/umeng/analytics/pro/cp;)V
    .locals 2

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d;->j:Ljava/util/HashMap;

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
