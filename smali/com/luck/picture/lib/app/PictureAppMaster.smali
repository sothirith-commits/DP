.class public final Lcom/luck/picture/lib/app/PictureAppMaster;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mInstance:Lcom/luck/picture/lib/app/PictureAppMaster;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/luck/picture/lib/app/PictureAppMaster;
    .locals 2

    sget-object v0, Lcom/luck/picture/lib/app/PictureAppMaster;->mInstance:Lcom/luck/picture/lib/app/PictureAppMaster;

    if-nez v0, :cond_1

    const-class v0, Lcom/luck/picture/lib/app/PictureAppMaster;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/luck/picture/lib/app/PictureAppMaster;->mInstance:Lcom/luck/picture/lib/app/PictureAppMaster;

    if-nez v1, :cond_0

    new-instance v1, Lcom/luck/picture/lib/app/PictureAppMaster;

    invoke-direct {v1}, Lcom/luck/picture/lib/app/PictureAppMaster;-><init>()V

    sput-object v1, Lcom/luck/picture/lib/app/PictureAppMaster;->mInstance:Lcom/luck/picture/lib/app/PictureAppMaster;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/luck/picture/lib/app/PictureAppMaster;->mInstance:Lcom/luck/picture/lib/app/PictureAppMaster;

    return-object v0
.end method
