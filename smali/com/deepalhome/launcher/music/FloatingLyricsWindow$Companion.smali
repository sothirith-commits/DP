.class public final Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;-><init>()V

    return-void
.end method

.method public static isShowing()Z
    .locals 1

    sget-object v0, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/lzf/easyfloat/EasyFloat$Companion;->isShow()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/deepalhome/launcher/music/FloatingLyricsWindow;
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->instance:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->instance:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, p1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->instance:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    return-object v0
.end method
