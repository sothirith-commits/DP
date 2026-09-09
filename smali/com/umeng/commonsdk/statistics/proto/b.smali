.class public final Lcom/umeng/commonsdk/statistics/proto/b;
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

.field public c:I

.field private m:B


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v1, "identity"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->g:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v4, "ts"

    const/16 v5, 0xa

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->h:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v6, "version"

    const/16 v7, 0x8

    const/4 v8, 0x3

    invoke-direct {v0, v6, v7, v8}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->i:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->j:Ljava/util/HashMap;

    new-instance v8, Lcom/umeng/commonsdk/statistics/proto/b$b;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/umeng/commonsdk/statistics/proto/b$b;-><init>(I)V

    const-class v10, Lcom/umeng/analytics/pro/cz;

    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/umeng/commonsdk/statistics/proto/b$d;

    invoke-direct {v8, v9}, Lcom/umeng/commonsdk/statistics/proto/b$d;-><init>(I)V

    const-class v10, Lcom/umeng/analytics/pro/da;

    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v8, Lcom/umeng/commonsdk/statistics/proto/b$e;

    invoke-direct {v0, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v8, Lcom/umeng/commonsdk/statistics/proto/b$e;->a:Lcom/umeng/commonsdk/statistics/proto/b$e;

    new-instance v10, Lcom/umeng/analytics/pro/cc;

    new-instance v11, Lcom/umeng/analytics/pro/cd;

    invoke-direct {v11, v2, v9}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v10, v1, v3, v11}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v8, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/b$e;->b:Lcom/umeng/commonsdk/statistics/proto/b$e;

    new-instance v2, Lcom/umeng/analytics/pro/cc;

    new-instance v8, Lcom/umeng/analytics/pro/cd;

    invoke-direct {v8, v5, v9}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v2, v4, v3, v8}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/b$e;->c:Lcom/umeng/commonsdk/statistics/proto/b$e;

    new-instance v2, Lcom/umeng/analytics/pro/cc;

    new-instance v4, Lcom/umeng/analytics/pro/cd;

    invoke-direct {v4, v7, v9}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v2, v6, v3, v4}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-class v1, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/cc;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/bn;->a(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    return-void
.end method

.method public final c()V
    .locals 2

    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/bn;->a(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-byte p0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/umeng/analytics/pro/bn;->a(BI)Z

    move-result p0

    return p0
.end method

.method public final j()Z
    .locals 1

    iget-byte p0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/umeng/analytics/pro/bn;->a(BI)Z

    move-result p0

    return p0
.end method

.method public final read(Lcom/umeng/analytics/pro/cp;)V
    .locals 2

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->j:Ljava/util/HashMap;

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

    const-string v1, "IdSnapshot(identity:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ts:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final write(Lcom/umeng/analytics/pro/cp;)V
    .locals 2

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->j:Ljava/util/HashMap;

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
