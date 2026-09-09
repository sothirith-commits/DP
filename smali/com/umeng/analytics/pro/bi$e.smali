.class public final enum Lcom/umeng/analytics/pro/bi$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/umeng/analytics/pro/bi$e;

.field public static final enum b:Lcom/umeng/analytics/pro/bi$e;

.field public static final enum c:Lcom/umeng/analytics/pro/bi$e;

.field public static final enum d:Lcom/umeng/analytics/pro/bi$e;

.field public static final enum e:Lcom/umeng/analytics/pro/bi$e;

.field public static final enum f:Lcom/umeng/analytics/pro/bi$e;

.field public static final enum g:Lcom/umeng/analytics/pro/bi$e;

.field public static final enum h:Lcom/umeng/analytics/pro/bi$e;

.field public static final enum i:Lcom/umeng/analytics/pro/bi$e;

.field public static final enum j:Lcom/umeng/analytics/pro/bi$e;

.field public static final k:Ljava/util/HashMap;

.field public static final synthetic n:[Lcom/umeng/analytics/pro/bi$e;


# instance fields
.field private final l:S

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/umeng/analytics/pro/bi$e;

    const-string v1, "VERSION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "version"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/umeng/analytics/pro/bi$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/pro/bi$e;->a:Lcom/umeng/analytics/pro/bi$e;

    new-instance v1, Lcom/umeng/analytics/pro/bi$e;

    const-string v2, "ADDRESS"

    const/4 v4, 0x2

    const-string v5, "address"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/umeng/analytics/pro/bi$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v1, Lcom/umeng/analytics/pro/bi$e;->b:Lcom/umeng/analytics/pro/bi$e;

    new-instance v2, Lcom/umeng/analytics/pro/bi$e;

    const-string v3, "SIGNATURE"

    const/4 v5, 0x3

    const-string v6, "signature"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/umeng/analytics/pro/bi$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v2, Lcom/umeng/analytics/pro/bi$e;->c:Lcom/umeng/analytics/pro/bi$e;

    new-instance v3, Lcom/umeng/analytics/pro/bi$e;

    const-string v4, "SERIAL_NUM"

    const/4 v6, 0x4

    const-string v7, "serial_num"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/umeng/analytics/pro/bi$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v3, Lcom/umeng/analytics/pro/bi$e;->d:Lcom/umeng/analytics/pro/bi$e;

    new-instance v4, Lcom/umeng/analytics/pro/bi$e;

    const-string v5, "TS_SECS"

    const/4 v7, 0x5

    const-string v8, "ts_secs"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/umeng/analytics/pro/bi$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lcom/umeng/analytics/pro/bi$e;->e:Lcom/umeng/analytics/pro/bi$e;

    new-instance v5, Lcom/umeng/analytics/pro/bi$e;

    const-string v6, "LENGTH"

    const/4 v8, 0x6

    const-string v9, "length"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/umeng/analytics/pro/bi$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v5, Lcom/umeng/analytics/pro/bi$e;->f:Lcom/umeng/analytics/pro/bi$e;

    new-instance v6, Lcom/umeng/analytics/pro/bi$e;

    const-string v7, "ENTITY"

    const/4 v9, 0x7

    const-string v10, "entity"

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/umeng/analytics/pro/bi$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v6, Lcom/umeng/analytics/pro/bi$e;->g:Lcom/umeng/analytics/pro/bi$e;

    new-instance v7, Lcom/umeng/analytics/pro/bi$e;

    const-string v8, "GUID"

    const/16 v10, 0x8

    const-string v11, "guid"

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/umeng/analytics/pro/bi$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v7, Lcom/umeng/analytics/pro/bi$e;->h:Lcom/umeng/analytics/pro/bi$e;

    new-instance v8, Lcom/umeng/analytics/pro/bi$e;

    const-string v9, "CHECKSUM"

    const/16 v11, 0x9

    const-string v12, "checksum"

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/umeng/analytics/pro/bi$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v8, Lcom/umeng/analytics/pro/bi$e;->i:Lcom/umeng/analytics/pro/bi$e;

    new-instance v9, Lcom/umeng/analytics/pro/bi$e;

    const-string v10, "codex"

    const-string v12, "CODEX"

    const/16 v13, 0xa

    invoke-direct {v9, v12, v11, v13, v10}, Lcom/umeng/analytics/pro/bi$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v9, Lcom/umeng/analytics/pro/bi$e;->j:Lcom/umeng/analytics/pro/bi$e;

    filled-new-array/range {v0 .. v9}, [Lcom/umeng/analytics/pro/bi$e;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/bi$e;->n:[Lcom/umeng/analytics/pro/bi$e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/bi$e;->k:Ljava/util/HashMap;

    const-class v0, Lcom/umeng/analytics/pro/bi$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/pro/bi$e;

    sget-object v2, Lcom/umeng/analytics/pro/bi$e;->k:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/umeng/analytics/pro/bi$e;->m:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/umeng/analytics/pro/bi$e;->l:S

    iput-object p4, p0, Lcom/umeng/analytics/pro/bi$e;->m:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/pro/bi$e;
    .locals 1

    const-class v0, Lcom/umeng/analytics/pro/bi$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/pro/bi$e;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/pro/bi$e;
    .locals 1

    sget-object v0, Lcom/umeng/analytics/pro/bi$e;->n:[Lcom/umeng/analytics/pro/bi$e;

    invoke-virtual {v0}, [Lcom/umeng/analytics/pro/bi$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/pro/bi$e;

    return-object v0
.end method
