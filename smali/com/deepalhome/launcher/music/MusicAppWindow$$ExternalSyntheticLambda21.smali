.class public final synthetic Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(JLcom/deepalhome/launcher/music/Music;Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->f$2:J

    iput-object p3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    iput-object p4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(JLcom/deepalhome/launcher/music/ttml/LyricPayload;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    iput-wide p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->f$2:J

    iput-object p3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;JLjava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->f$2:J

    iput-object p4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;JI)V
    .locals 0

    iput p5, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->f$2:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-string v0, "$key"

    const-string v1, "$payload"

    const/4 v2, 0x0

    const-string v3, "this$0"

    iget-wide v4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->f$2:J

    iget-object v6, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    iget-object v7, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    iget p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->$r8$clinit:I

    check-cast v7, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v6, Ljava/util/List;

    const-string p0, "$icons"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_9

    iget-wide v0, v7, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->loadToken:J

    cmp-long p0, v4, v0

    if-eqz p0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p0, v7, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->latestItemKeys:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/floating/CachedIcon;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->selectedItems:Ljava/util/LinkedHashSet;

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v6, v3}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter;->onSelectionChanged:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result p0

    iget-object v0, v7, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->emptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eqz p0, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    move v4, v1

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v7, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    if-eqz p0, :cond_6

    move v2, v1

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    const-string p0, "recyclerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_8
    const-string p0, "emptyView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_9
    :goto_3
    return-void

    :pswitch_0
    check-cast v7, Lcom/deepalhome/launcher/music/Music;

    const-string p0, "$music"

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v6, Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-wide v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->lyricRequestToken:J

    cmp-long p0, v0, v4

    if-eqz p0, :cond_a

    goto :goto_4

    :cond_a
    sget-object p0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->currentLyricRequestKey:Ljava/lang/String;

    sget-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->INSTANCE:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "toLowerCase(...)"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_4

    :cond_b
    sput-object v6, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->currentPayload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    invoke-static {v6}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->rebuildTimeline(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    invoke-static {}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->dispatchCurrentSnapshot()V

    :goto_4
    return-void

    :pswitch_1
    check-cast v7, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v7, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->currentMusicKey:Ljava/lang/String;

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_5

    :cond_c
    iget-wide v0, v7, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRequestToken:J

    cmp-long p0, v0, v4

    if-eqz p0, :cond_d

    goto :goto_5

    :cond_d
    iget-boolean p0, v7, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isAwaitingLyric:Z

    if-nez p0, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v7}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->finishLyricRequest()V

    iget-object p0, v7, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz p0, :cond_f

    iget-object v0, v7, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    const v1, 0x7f1302b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->showEmpty(Ljava/lang/String;)V

    :cond_f
    :goto_5
    return-void

    :pswitch_2
    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v7, Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/HudFloatManager;->currentMusicKey:Ljava/lang/String;

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_7

    :cond_10
    sget-wide v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricRequestToken:J

    cmp-long p0, v0, v4

    if-eqz p0, :cond_11

    goto :goto_7

    :cond_11
    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    goto :goto_6

    :cond_12
    const-wide/16 v0, 0x0

    :goto_6
    sget-object p0, Lcom/deepalhome/launcher/hud/HudFloatManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudFloatManager;->finishLyricRequest()V

    sget-object p0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz p0, :cond_13

    invoke-virtual {p0, v7, v0, v1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->load(Lcom/deepalhome/launcher/music/ttml/LyricPayload;J)V

    :cond_13
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_14

    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->updatePlaybackState(Landroid/media/session/PlaybackState;)V

    :cond_14
    :goto_7
    return-void

    :pswitch_3
    check-cast v6, Ljava/lang/String;

    check-cast v7, Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-static {v7, v6, v4, v5}, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$lambda$EULsGwhNJlUODnQOPLrIzS5tmyQ(Lcom/deepalhome/launcher/music/MusicAppWindow;Ljava/lang/String;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
