.class public final Lcom/deepalhome/launcher/hud/HudDisplayHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/hud/HudDisplayHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/hud/HudDisplayHelper;

    invoke-direct {v0}, Lcom/deepalhome/launcher/hud/HudDisplayHelper;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/HudDisplayHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findHudDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 10

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    const-string v2, "getDisplays(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x320

    const/16 v6, 0x1e0

    :try_start_0
    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    sget-object v7, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/HudDisplayHelper;

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v8, v5, :cond_2

    if-eq v9, v6, :cond_4

    :cond_2
    if-ne v8, v6, :cond_5

    if-ne v9, v5, :cond_5

    goto :goto_2

    :catch_0
    :try_start_1
    invoke-virtual {v4, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-object v7, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/HudDisplayHelper;

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v8, v5, :cond_3

    if-eq v9, v6, :cond_4

    :cond_3
    if-ne v8, v6, :cond_5

    if-ne v9, v5, :cond_5

    :cond_4
    :goto_2
    return-object v4

    :catch_1
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method public static startHudIfAvailable(Landroid/content/Context;)Z
    .locals 17

    const-string v1, "listener"

    invoke-static/range {p0 .. p0}, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->findHudDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    sget-object v3, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    return v4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/deepalhome/launcher/hud/HudFloatManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricPayloadAvailableListener:Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1;

    sget-object v5, Lcom/deepalhome/launcher/hud/HudFloatManager;->uiModeListener:Lcom/deepalhome/launcher/hud/HudFloatManager$uiModeListener$1;

    sget-object v6, Lcom/deepalhome/launcher/hud/HudFloatManager;->musicChangedListener:Lcom/deepalhome/launcher/hud/HudFloatManager$musicChangedListener$1;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudFloatManager;->hideFloat()V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0e005d

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v8, v0, Landroid/view/WindowManager;

    if-eqz v8, :cond_2

    check-cast v0, Landroid/view/WindowManager;

    move-object v8, v0

    goto :goto_0

    :cond_2
    move-object v8, v9

    :goto_0
    if-nez v8, :cond_3

    goto/16 :goto_7

    :cond_3
    const v0, 0x7f0b0360

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricContainer:Landroid/view/View;

    const v0, 0x7f0b0355

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/wcy/lrcview/LrcView;

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lrcView:Lme/wcy/lrcview/LrcView;

    const v0, 0x7f0b0611

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    new-instance v0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    sget-object v10, Lcom/deepalhome/launcher/hud/HudFloatManager;->lrcView:Lme/wcy/lrcview/LrcView;

    sget-object v11, Lcom/deepalhome/launcher/hud/HudFloatManager;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    invoke-direct {v0, v10, v11}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;-><init>(Lme/wcy/lrcview/LrcView;Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;)V

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    new-instance v15, Landroid/view/WindowManager$LayoutParams;

    const/16 v14, 0x18

    const/16 v16, -0x3

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x7f6

    move-object v10, v15

    move-object v9, v15

    move/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v10, 0x800033

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsX()I

    move-result v10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsY()I

    move-result v0

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Lme/wcy/lrcview/LrcView;->setAnchorLine(I)V

    :cond_4
    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz v0, :cond_5

    sget-object v10, Lcom/deepalhome/launcher/hud/HudFloatManager;->lineRenderInfoListener:Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v10}, Lme/wcy/lrcview/LrcView;->setOnLineRenderInfoListener(Lme/wcy/lrcview/LrcView$OnLineRenderInfoListener;)V

    :cond_5
    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setAnchorLine(I)V

    :cond_6
    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz v0, :cond_7

    sget-object v10, Lcom/deepalhome/launcher/hud/HudFloatManager;->ttmlLineRenderInfoListener:Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v10}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setOnLineRenderInfoListener(Lcom/deepalhome/launcher/music/ttml/OnTtmlLineRenderInfoListener;)V

    :cond_7
    invoke-static {}, Lcom/deepalhome/launcher/hud/HudFloatManager;->applySettingsToView()V

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-interface {v8, v7, v9}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    sput-object v7, Lcom/deepalhome/launcher/hud/HudFloatManager;->hudView:Landroid/view/View;

    sput-object v8, Lcom/deepalhome/launcher/hud/HudFloatManager;->windowManager:Landroid/view/WindowManager;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/deepalhome/launcher/music/MusicManager;->addOnMusicChangedListener(Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;)V

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/deepalhome/launcher/theme/UIModeManager;->addOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->lyricPayloadAvailableListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getPersistedMusic()Lcom/deepalhome/launcher/music/Music;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v6, v0}, Lcom/deepalhome/launcher/hud/HudFloatManager$musicChangedListener$1;->onInfoChanged(Lcom/deepalhome/launcher/music/Music;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_8
    :goto_1
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_c

    sget-object v9, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v9, :cond_9

    invoke-virtual {v9, v0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->updatePlaybackState(Landroid/media/session/PlaybackState;)V

    :cond_9
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_a

    const/4 v10, 0x6

    if-eq v9, v10, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object v9, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->isTtmlMode()Z

    move-result v9

    if-ne v9, v4, :cond_b

    goto :goto_2

    :cond_b
    sget-object v4, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->updateTime(J)V

    :cond_c
    :goto_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    move-object v4, v0

    goto :goto_5

    :goto_4
    sget v4, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    goto :goto_3

    :goto_5
    invoke-static {v4}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_d

    :try_start_1
    invoke-interface {v8, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    sget v7, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_6
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/deepalhome/launcher/music/MusicManager;->removeOnMusicChangedListener(Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;)V

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/deepalhome/launcher/theme/UIModeManager;->removeOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->lyricPayloadAvailableListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    sput-object v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->hudView:Landroid/view/View;

    sput-object v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->windowManager:Landroid/view/WindowManager;

    sput-object v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricContainer:Landroid/view/View;

    sput-object v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->lrcView:Lme/wcy/lrcview/LrcView;

    sput-object v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    sput-object v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    sput-object v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->cachedLrcBackground:Landroid/graphics/drawable/Drawable;

    sput-boolean v2, Lcom/deepalhome/launcher/hud/HudFloatManager;->isBorderShown:Z

    :cond_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v1, v4, Lkotlin/Result$Failure;

    if-eqz v1, :cond_e

    move-object v4, v0

    :cond_e
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_7
    return v2
.end method
