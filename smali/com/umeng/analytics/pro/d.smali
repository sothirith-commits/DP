.class public final Lcom/umeng/analytics/pro/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final aG:[Ljava/lang/String;

.field public static final al:Ljava/lang/String;

.field public static final am:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget-object v0, Lcom/umeng/analytics/pro/at;->D:Ljava/util/HashMap;

    sget-object v0, Lcom/umeng/analytics/pro/at$a;->a:Lcom/umeng/analytics/pro/at;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "bl"

    invoke-static {v0}, Lcom/umeng/analytics/pro/at;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/d;->al:Ljava/lang/String;

    const-string v0, "wl"

    invoke-static {v0}, Lcom/umeng/analytics/pro/at;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/d;->am:Ljava/lang/String;

    const-string v4, "$st_fl"

    const-string v5, "ds"

    const-string v1, "id"

    const-string v2, "ts"

    const-string v3, "du"

    const-string v6, "pn"

    const-string v7, "_$sp"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/d;->aG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
