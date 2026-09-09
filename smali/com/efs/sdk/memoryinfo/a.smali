.class final Lcom/efs/sdk/memoryinfo/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    sput-boolean v0, Lcom/efs/sdk/memoryinfo/a;->DEBUG:Z

    return-void
.end method
