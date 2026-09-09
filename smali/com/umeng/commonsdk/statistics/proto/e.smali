.class public final Lcom/umeng/commonsdk/statistics/proto/e;
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
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field private l:B

.field private m:[Lcom/umeng/commonsdk/statistics/proto/e$e;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v1, "value"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->g:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v3, "ts"

    const/16 v4, 0xa

    const/4 v5, 0x2

    invoke-direct {v0, v3, v4, v5}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->h:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v6, "guid"

    const/4 v7, 0x3

    invoke-direct {v0, v6, v2, v7}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->i:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->j:Ljava/util/HashMap;

    new-instance v7, Lcom/umeng/commonsdk/statistics/proto/e$b;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/umeng/commonsdk/statistics/proto/e$b;-><init>(I)V

    const-class v9, Lcom/umeng/analytics/pro/cz;

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/umeng/commonsdk/statistics/proto/e$d;

    invoke-direct {v7, v8}, Lcom/umeng/commonsdk/statistics/proto/e$d;-><init>(I)V

    const-class v9, Lcom/umeng/analytics/pro/da;

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v7, Lcom/umeng/commonsdk/statistics/proto/e$e;

    invoke-direct {v0, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v7, Lcom/umeng/commonsdk/statistics/proto/e$e;->a:Lcom/umeng/commonsdk/statistics/proto/e$e;

    new-instance v9, Lcom/umeng/analytics/pro/cc;

    new-instance v10, Lcom/umeng/analytics/pro/cd;

    invoke-direct {v10, v2, v8}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v9, v1, v5, v10}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v7, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/e$e;->b:Lcom/umeng/commonsdk/statistics/proto/e$e;

    new-instance v7, Lcom/umeng/analytics/pro/cc;

    new-instance v9, Lcom/umeng/analytics/pro/cd;

    invoke-direct {v9, v4, v8}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v7, v3, v5, v9}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v1, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/e$e;->c:Lcom/umeng/commonsdk/statistics/proto/e$e;

    new-instance v3, Lcom/umeng/analytics/pro/cc;

    new-instance v4, Lcom/umeng/analytics/pro/cd;

    invoke-direct {v4, v2, v8}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v3, v6, v5, v4}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-class v1, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/cc;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e$e;->a:Lcom/umeng/commonsdk/statistics/proto/e$e;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/e$e;->b:Lcom/umeng/commonsdk/statistics/proto/e$e;

    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/e$e;->c:Lcom/umeng/commonsdk/statistics/proto/e$e;

    filled-new-array {v0, v1, v2}, [Lcom/umeng/commonsdk/statistics/proto/e$e;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->m:[Lcom/umeng/commonsdk/statistics/proto/e$e;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/bn;->a(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    return-void
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()Z
    .locals 1

    iget-byte p0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/umeng/analytics/pro/bn;->a(BI)Z

    move-result p0

    return p0
.end method

.method public final read(Lcom/umeng/analytics/pro/cp;)V
    .locals 2

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->j:Ljava/util/HashMap;

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
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImprintValue("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v1

    const-string v2, ", "

    const-string v3, "null"

    if-eqz v1, :cond_1

    const-string v1, "value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "guid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    if-nez p0, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
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

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->j:Ljava/util/HashMap;

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
