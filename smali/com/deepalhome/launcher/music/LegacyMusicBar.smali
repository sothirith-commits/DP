.class public final Lcom/deepalhome/launcher/music/LegacyMusicBar;
.super Lcom/deepalhome/launcher/view/BaseView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/view/BaseView<",
        "Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static lastCoverDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field public coverInfoRequestToken:J

.field public coverTarget:Lcom/deepalhome/launcher/music/MusicBar$updateCover$target$1;

.field public currentCoverSource:Ljava/lang/Object;

.field public currentMusicAppPackageName:Ljava/lang/String;

.field public currentMusicKey:Ljava/lang/String;

.field public forceWhiteControls:Z

.field public isMusicListenerRegistered:Z

.field public final musicChangedListener:Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;

.field public observeMusicChanges:Z

.field public pendingCover:Ljava/lang/Object;

.field public runtimeInteractive:Z

.field public final showLoadingRunnable:Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/music/LegacyMusicBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/music/LegacyMusicBar$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->musicChangedListener:Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;

    new-instance p1, Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/music/LegacyMusicBar;I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->showLoadingRunnable:Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static hit(Landroid/view/View;FF)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final setMusicListenerRegistered(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->isMusicListenerRegistered:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->isMusicListenerRegistered:Z

    iget-object v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->musicChangedListener:Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->addOnMusicChangedListener(Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->pendingCover:Ljava/lang/Object;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->pendingCover:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->updateCover(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->removeOnMusicChangedListener(Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;)V

    sget-object p1, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->showLoadingRunnable:Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final applyInteractionState()V
    .locals 6

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->titleTv:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->runtimeInteractive:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->nextSongBtn:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->runtimeInteractive:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    sget-object v1, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->nextSongBtn:Landroid/widget/ImageView;

    const-string v4, "nextSongBtn"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v4, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyInteractionState$1;->INSTANCE:Lcom/deepalhome/launcher/music/LegacyMusicBar$applyInteractionState$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    goto :goto_3

    :cond_3
    :goto_2
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->playBtn:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->runtimeInteractive:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->playBtn:Landroid/widget/ImageView;

    const-string v4, "playBtn"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyInteractionState$2;

    invoke-direct {v4, p0}, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyInteractionState$2;-><init>(Lcom/deepalhome/launcher/music/LegacyMusicBar;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->runtimeInteractive:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v3, v3, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const-string v4, "getRoot(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v4, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyInteractionState$3;->INSTANCE:Lcom/deepalhome/launcher/music/LegacyMusicBar$applyInteractionState$3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    new-instance v1, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    goto :goto_6

    :cond_6
    :goto_5
    move-object v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->coverIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->runtimeInteractive:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->currentMusicAppPackageName:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    sget-object v1, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->coverIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v3, "coverIv"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyInteractionState$4;

    invoke-direct {v3, p0}, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyInteractionState$4;-><init>(Lcom/deepalhome/launcher/music/LegacyMusicBar;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    move-object v2, p0

    :cond_8
    :goto_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final applyMusicInfo(Lcom/deepalhome/launcher/music/Music;Z)V
    .locals 11

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "toLowerCase(...)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->currentMusicKey:Ljava/lang/String;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-object v7, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->currentMusicKey:Ljava/lang/String;

    sget-object v3, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->getTitle(Lcom/deepalhome/launcher/music/Music;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_6

    goto :goto_2

    :cond_1
    if-ne v4, v3, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-eq v5, v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_5

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_4

    goto :goto_3

    :cond_4
    add-int/2addr v6, v0

    goto :goto_1

    :cond_5
    :goto_2
    move v0, v2

    goto :goto_4

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getCover()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->currentCoverSource:Ljava/lang/Object;

    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_9

    sget-object v5, Lcom/deepalhome/launcher/music/MusicCoverStore;->INSTANCE:Lcom/deepalhome/launcher/music/MusicCoverStore;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/music/MusicCoverStore;->normalizeCoverString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_7

    :cond_7
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_8

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/deepalhome/launcher/music/MusicCoverStore;->normalizeCoverString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_8
    const-string v4, ""

    :goto_5
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_6

    :cond_9
    instance-of v5, v3, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_a

    instance-of v5, v4, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_b

    if-eq v4, v3, :cond_c

    goto :goto_6

    :cond_a
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    :goto_6
    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getCover()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->updateCover(Ljava/lang/Object;)V

    :cond_c
    :goto_7
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->applyInteractionState()V

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->titleTv:Landroid/widget/TextView;

    new-instance v2, Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/music/LegacyMusicBar;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_d
    if-nez v1, :cond_f

    if-nez p2, :cond_e

    goto :goto_8

    :cond_e
    iget-wide v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->coverInfoRequestToken:J

    const-wide/16 v2, 0x1

    add-long v8, v0, v2

    iput-wide v8, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->coverInfoRequestToken:J

    :try_start_0
    sget p2, Lkotlin/Result;->$r8$clinit:I

    sget-object p2, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    new-instance v0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

    const/4 v10, 0x2

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;-><init>(Ljava/lang/Object;Ljava/lang/String;JI)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->loadMusicInfo(Lcom/deepalhome/launcher/music/Music;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :cond_f
    :goto_8
    return-void
.end method

.method public final applyPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->showLoadingRunnable:Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->playBtn:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->playBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object p1, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->loadingPb:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_3
    :goto_2
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_7

    :goto_4
    sget-object p1, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->playBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->playBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object p1, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->loadingPb:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "ev"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->runtimeInteractive:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e00bb

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    new-instance v0, Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/music/LegacyMusicBar;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->setMusicListenerRegistered(Z)V

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->showLoadingRunnable:Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->coverTarget:Lcom/deepalhome/launcher/music/MusicBar$updateCover$target$1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->coverTarget:Lcom/deepalhome/launcher/music/MusicBar$updateCover$target$1;

    iput-object v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->pendingCover:Ljava/lang/Object;

    iget-wide v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->coverInfoRequestToken:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->coverInfoRequestToken:J

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInit()V
    .locals 0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->refreshBindingState()V

    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    new-instance p1, Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/deepalhome/launcher/music/LegacyMusicBar$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/music/LegacyMusicBar;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final refreshBindingState()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->currentMusicAppPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMusicAppPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->currentMusicAppPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->applyInteractionState()V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getPersistedMusic()Lcom/deepalhome/launcher/music/Music;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->runtimeInteractive:Z

    invoke-virtual {p0, v0, v2}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->applyMusicInfo(Lcom/deepalhome/launcher/music/Music;Z)V

    :cond_2
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->getCurrentPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->applyPlaybackState(Landroid/media/session/PlaybackState;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->observeMusicChanges:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->setMusicListenerRegistered(Z)V

    return-void
.end method

.method public final setForceWhiteControls(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->forceWhiteControls:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->forceWhiteControls:Z

    sget-object p1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->updateUIMode(Z)V

    return-void
.end method

.method public final updateCover(Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->pendingCover:Ljava/lang/Object;

    iput-object p1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->currentCoverSource:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->coverIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->lastCoverDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->coverTarget:Lcom/deepalhome/launcher/music/MusicBar$updateCover$target$1;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    :cond_3
    new-instance v1, Lcom/deepalhome/launcher/music/MusicBar$updateCover$target$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/music/MusicBar$updateCover$target$1;-><init>(Lcom/deepalhome/launcher/view/BaseView;I)V

    iput-object v1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->coverTarget:Lcom/deepalhome/launcher/music/MusicBar$updateCover$target$1;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x7f100000

    invoke-static {v0, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {p1}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-direct {p1, v2}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    invoke-virtual {p0, p1, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/bumptech/glide/util/Executors;->MAIN_THREAD_EXECUTOR:Lcom/bumptech/glide/util/Executors$1;

    invoke-virtual {p0, v1, p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/util/Executors$1;)V

    return-void

    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->pendingCover:Ljava/lang/Object;

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;->forceWhiteControls:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_2

    const v2, 0x7f06038c

    goto :goto_2

    :cond_2
    const v2, 0x7f06038b

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->playBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const v1, 0x7f0801d8

    goto :goto_3

    :cond_3
    const v1, 0x7f0801d7

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->nextSongBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    const v1, 0x7f0801d2

    goto :goto_4

    :cond_4
    const v1, 0x7f0801d1

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->loadingPb:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_5

    const v2, 0x7f060099

    goto :goto_5

    :cond_5
    const v2, 0x7f060098

    :goto_5
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->coverBackground:Lcom/makeramen/roundedimageview/RoundedImageView;

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_6

    const p1, 0x7f0801da

    goto :goto_6

    :cond_6
    const p1, 0x7f0801d9

    :goto_6
    invoke-static {p0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
