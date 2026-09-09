.class public final Lcom/umeng/analytics/pro/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/analytics/pro/bq;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final n:Lcom/umeng/analytics/pro/ck;

.field public static final o:Lcom/umeng/analytics/pro/ck;

.field public static final p:Lcom/umeng/analytics/pro/ck;

.field public static final q:Lcom/umeng/analytics/pro/ck;

.field public static final r:Lcom/umeng/analytics/pro/ck;

.field public static final s:Lcom/umeng/analytics/pro/ck;

.field public static final t:Lcom/umeng/analytics/pro/ck;

.field public static final u:Lcom/umeng/analytics/pro/ck;

.field public static final v:Lcom/umeng/analytics/pro/ck;

.field public static final w:Lcom/umeng/analytics/pro/ck;

.field public static final x:Ljava/util/HashMap;


# instance fields
.field private C:B

.field private D:[Lcom/umeng/analytics/pro/bi$e;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v1, "version"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/bi;->n:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v4, "address"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v2, v5}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/bi;->o:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v6, "signature"

    const/4 v7, 0x3

    invoke-direct {v0, v6, v2, v7}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/bi;->p:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v7, "serial_num"

    const/16 v8, 0x8

    const/4 v9, 0x4

    invoke-direct {v0, v7, v8, v9}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/bi;->q:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v9, "ts_secs"

    const/4 v10, 0x5

    invoke-direct {v0, v9, v8, v10}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/bi;->r:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v10, "length"

    const/4 v11, 0x6

    invoke-direct {v0, v10, v8, v11}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/bi;->s:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v11, "entity"

    const/4 v12, 0x7

    invoke-direct {v0, v11, v2, v12}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/bi;->t:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v12, "guid"

    invoke-direct {v0, v12, v2, v8}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/bi;->u:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v13, "checksum"

    const/16 v14, 0x9

    invoke-direct {v0, v13, v2, v14}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/bi;->v:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Lcom/umeng/analytics/pro/ck;

    const-string v14, "codex"

    const/16 v15, 0xa

    invoke-direct {v0, v14, v8, v15}, Lcom/umeng/analytics/pro/ck;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/bi;->w:Lcom/umeng/analytics/pro/ck;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/bi;->x:Ljava/util/HashMap;

    new-instance v15, Lcom/umeng/analytics/pro/bi$b;

    const/4 v5, 0x0

    invoke-direct {v15, v5}, Lcom/umeng/analytics/pro/bi$b;-><init>(I)V

    const-class v8, Lcom/umeng/analytics/pro/cz;

    invoke-virtual {v0, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/umeng/analytics/pro/bi$d;

    invoke-direct {v8, v5}, Lcom/umeng/analytics/pro/bi$d;-><init>(I)V

    const-class v15, Lcom/umeng/analytics/pro/da;

    invoke-virtual {v0, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v8, Lcom/umeng/analytics/pro/bi$e;

    invoke-direct {v0, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v8, Lcom/umeng/analytics/pro/bi$e;->a:Lcom/umeng/analytics/pro/bi$e;

    new-instance v15, Lcom/umeng/analytics/pro/cc;

    new-instance v3, Lcom/umeng/analytics/pro/cd;

    invoke-direct {v3, v2, v5}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    const/4 v2, 0x1

    invoke-direct {v15, v1, v2, v3}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v8, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/analytics/pro/bi$e;->b:Lcom/umeng/analytics/pro/bi$e;

    new-instance v3, Lcom/umeng/analytics/pro/cc;

    new-instance v8, Lcom/umeng/analytics/pro/cd;

    const/16 v15, 0xb

    invoke-direct {v8, v15, v5}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v3, v4, v2, v8}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/analytics/pro/bi$e;->c:Lcom/umeng/analytics/pro/bi$e;

    new-instance v3, Lcom/umeng/analytics/pro/cc;

    new-instance v4, Lcom/umeng/analytics/pro/cd;

    invoke-direct {v4, v15, v5}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v3, v6, v2, v4}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/analytics/pro/bi$e;->d:Lcom/umeng/analytics/pro/bi$e;

    new-instance v3, Lcom/umeng/analytics/pro/cc;

    new-instance v4, Lcom/umeng/analytics/pro/cd;

    const/16 v6, 0x8

    invoke-direct {v4, v6, v5}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v3, v7, v2, v4}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/analytics/pro/bi$e;->e:Lcom/umeng/analytics/pro/bi$e;

    new-instance v3, Lcom/umeng/analytics/pro/cc;

    new-instance v4, Lcom/umeng/analytics/pro/cd;

    invoke-direct {v4, v6, v5}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v3, v9, v2, v4}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/analytics/pro/bi$e;->f:Lcom/umeng/analytics/pro/bi$e;

    new-instance v3, Lcom/umeng/analytics/pro/cc;

    new-instance v4, Lcom/umeng/analytics/pro/cd;

    invoke-direct {v4, v6, v5}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v3, v10, v2, v4}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/analytics/pro/bi$e;->g:Lcom/umeng/analytics/pro/bi$e;

    new-instance v3, Lcom/umeng/analytics/pro/cc;

    new-instance v4, Lcom/umeng/analytics/pro/cd;

    const/16 v6, 0xb

    invoke-direct {v4, v6, v2}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v3, v11, v2, v4}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/analytics/pro/bi$e;->h:Lcom/umeng/analytics/pro/bi$e;

    new-instance v3, Lcom/umeng/analytics/pro/cc;

    new-instance v4, Lcom/umeng/analytics/pro/cd;

    invoke-direct {v4, v6, v5}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v3, v12, v2, v4}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/analytics/pro/bi$e;->i:Lcom/umeng/analytics/pro/bi$e;

    new-instance v3, Lcom/umeng/analytics/pro/cc;

    new-instance v4, Lcom/umeng/analytics/pro/cd;

    invoke-direct {v4, v6, v5}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    invoke-direct {v3, v13, v2, v4}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/umeng/analytics/pro/bi$e;->j:Lcom/umeng/analytics/pro/bi$e;

    new-instance v2, Lcom/umeng/analytics/pro/cc;

    new-instance v3, Lcom/umeng/analytics/pro/cd;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v5}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    const/4 v4, 0x2

    invoke-direct {v2, v14, v4, v3}, Lcom/umeng/analytics/pro/cc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/cd;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-class v1, Lcom/umeng/analytics/pro/bi;

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/cc;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/pro/bi;->C:B

    sget-object v0, Lcom/umeng/analytics/pro/bi$e;->j:Lcom/umeng/analytics/pro/bi$e;

    filled-new-array {v0}, [Lcom/umeng/analytics/pro/bi$e;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/bi;->D:[Lcom/umeng/analytics/pro/bi$e;

    return-void
.end method


# virtual methods
.method public final F()Z
    .locals 1

    iget-byte p0, p0, Lcom/umeng/analytics/pro/bi;->C:B

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/umeng/analytics/pro/bn;->a(BI)Z

    move-result p0

    return p0
.end method

.method public final G()V
    .locals 3

    iget-object v0, p0, Lcom/umeng/analytics/pro/bi;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/umeng/analytics/pro/bi;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/umeng/analytics/pro/bi;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/umeng/analytics/pro/bi;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/analytics/pro/bi;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/pro/bi;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/umeng/analytics/pro/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bi;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/umeng/analytics/pro/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bi;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/umeng/analytics/pro/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'entity\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bi;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/umeng/analytics/pro/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'signature\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bi;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/umeng/analytics/pro/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'address\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bi;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/umeng/analytics/pro/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'version\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bi;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/cq;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 2

    iget-byte v0, p0, Lcom/umeng/analytics/pro/bi;->C:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/bn;->a(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/pro/bi;->C:B

    return-void
.end method

.method public final e()V
    .locals 2

    iget-byte v0, p0, Lcom/umeng/analytics/pro/bi;->C:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/bn;->a(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/pro/bi;->C:B

    return-void
.end method

.method public final f()V
    .locals 2

    iget-byte v0, p0, Lcom/umeng/analytics/pro/bi;->C:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/bn;->a(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/pro/bi;->C:B

    return-void
.end method

.method public final j()V
    .locals 2

    iget-byte v0, p0, Lcom/umeng/analytics/pro/bi;->C:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/bn;->a(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/pro/bi;->C:B

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-byte p0, p0, Lcom/umeng/analytics/pro/bi;->C:B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/umeng/analytics/pro/bn;->a(BI)Z

    move-result p0

    return p0
.end method

.method public final p()Z
    .locals 1

    iget-byte p0, p0, Lcom/umeng/analytics/pro/bi;->C:B

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/umeng/analytics/pro/bn;->a(BI)Z

    move-result p0

    return p0
.end method

.method public final read(Lcom/umeng/analytics/pro/cp;)V
    .locals 2

    sget-object v0, Lcom/umeng/analytics/pro/bi;->x:Ljava/util/HashMap;

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

.method public final s()Z
    .locals 1

    iget-byte p0, p0, Lcom/umeng/analytics/pro/bi;->C:B

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/umeng/analytics/pro/bn;->a(BI)Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    const/4 v0, 0x1

    const/16 v1, 0x80

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UMEnvelope(version:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/umeng/analytics/pro/bi;->a:Ljava/lang/String;

    const-string v4, "null"

    if-nez v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "address:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/umeng/analytics/pro/bi;->b:Ljava/lang/String;

    if-nez v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "signature:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/umeng/analytics/pro/bi;->c:Ljava/lang/String;

    if-nez v5, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "serial_num:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/umeng/analytics/pro/bi;->d:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ts_secs:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/umeng/analytics/pro/bi;->e:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "length:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/umeng/analytics/pro/bi;->f:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "entity:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/umeng/analytics/pro/bi;->g:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_3
    sget-object v6, Lcom/umeng/analytics/pro/br;->a:Lcom/umeng/analytics/pro/br$a;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v5

    add-int/2addr v5, v7

    sub-int v7, v5, v8

    if-le v7, v1, :cond_4

    add-int/2addr v1, v8

    goto :goto_3

    :cond_4
    move v1, v5

    :goto_3
    move v7, v8

    :goto_4
    if-ge v7, v1, :cond_6

    if-le v7, v8, :cond_5

    const-string v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    aget-byte v9, v6, v7

    or-int/lit16 v9, v9, 0x100

    and-int/lit16 v9, v9, 0x1ff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v7, v0

    goto :goto_4

    :cond_6
    if-eq v5, v1, :cond_7

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "guid:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/umeng/analytics/pro/bi;->h:Ljava/lang/String;

    if-nez v0, :cond_8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "checksum:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/umeng/analytics/pro/bi;->i:Ljava/lang/String;

    if-nez v0, :cond_9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bi;->F()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "codex:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/umeng/analytics/pro/bi;->j:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a
    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final write(Lcom/umeng/analytics/pro/cp;)V
    .locals 2

    sget-object v0, Lcom/umeng/analytics/pro/bi;->x:Ljava/util/HashMap;

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
