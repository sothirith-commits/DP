.class public final enum Lcom/umeng/commonsdk/statistics/proto/c$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/umeng/commonsdk/statistics/proto/c$e;

.field public static final enum b:Lcom/umeng/commonsdk/statistics/proto/c$e;

.field public static final enum c:Lcom/umeng/commonsdk/statistics/proto/c$e;

.field public static final d:Ljava/util/HashMap;

.field public static final synthetic g:[Lcom/umeng/commonsdk/statistics/proto/c$e;


# instance fields
.field private final e:S

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/c$e;

    const-string v1, "SNAPSHOTS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "snapshots"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/umeng/commonsdk/statistics/proto/c$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/c$e;->a:Lcom/umeng/commonsdk/statistics/proto/c$e;

    new-instance v1, Lcom/umeng/commonsdk/statistics/proto/c$e;

    const-string v2, "JOURNALS"

    const/4 v4, 0x2

    const-string v5, "journals"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/umeng/commonsdk/statistics/proto/c$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v1, Lcom/umeng/commonsdk/statistics/proto/c$e;->b:Lcom/umeng/commonsdk/statistics/proto/c$e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/proto/c$e;

    const-string v3, "checksum"

    const-string v5, "CHECKSUM"

    const/4 v6, 0x3

    invoke-direct {v2, v5, v4, v6, v3}, Lcom/umeng/commonsdk/statistics/proto/c$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v2, Lcom/umeng/commonsdk/statistics/proto/c$e;->c:Lcom/umeng/commonsdk/statistics/proto/c$e;

    filled-new-array {v0, v1, v2}, [Lcom/umeng/commonsdk/statistics/proto/c$e;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/c$e;->g:[Lcom/umeng/commonsdk/statistics/proto/c$e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/c$e;->d:Ljava/util/HashMap;

    const-class v0, Lcom/umeng/commonsdk/statistics/proto/c$e;

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

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/c$e;

    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/c$e;->d:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/umeng/commonsdk/statistics/proto/c$e;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/umeng/commonsdk/statistics/proto/c$e;->e:S

    iput-object p4, p0, Lcom/umeng/commonsdk/statistics/proto/c$e;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/c$e;
    .locals 1

    const-class v0, Lcom/umeng/commonsdk/statistics/proto/c$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/statistics/proto/c$e;

    return-object p0
.end method

.method public static values()[Lcom/umeng/commonsdk/statistics/proto/c$e;
    .locals 1

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/c$e;->g:[Lcom/umeng/commonsdk/statistics/proto/c$e;

    invoke-virtual {v0}, [Lcom/umeng/commonsdk/statistics/proto/c$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/commonsdk/statistics/proto/c$e;

    return-object v0
.end method
