.class public final Lcom/umeng/analytics/pro/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/umeng/analytics/pro/at;->D:Ljava/util/HashMap;

    sget-object v0, Lcom/umeng/analytics/pro/at$a;->a:Lcom/umeng/analytics/pro/at;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ua"

    invoke-static {v0}, Lcom/umeng/analytics/pro/at;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/e;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
