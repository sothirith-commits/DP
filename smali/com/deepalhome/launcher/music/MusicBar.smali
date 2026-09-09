.class public final Lcom/deepalhome/launcher/music/MusicBar;
.super Lcom/deepalhome/launcher/view/BaseView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/view/BaseView<",
        "Lcom/deepalhome/launcher/databinding/MusicBarBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/music/MusicBar$Companion;

.field private static lastCoverDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private coverInfoRequestToken:J

.field private coverTarget:Lcom/bumptech/glide/request/target/CustomTarget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/CustomTarget;"
        }
    .end annotation
.end field

.field private currentCoverSource:Ljava/lang/Object;

.field private currentMusicAppPackageName:Ljava/lang/String;

.field private currentMusicKey:Ljava/lang/String;

.field private isMusicListenerRegistered:Z

.field private final musicChangedListener:Lcom/deepalhome/launcher/music/MusicBar$musicChangedListener$1;

.field private pendingCover:Ljava/lang/Object;

.field private final showLoadingRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$C7ocs8SbRteE4e6kbYrDO24miY0(Lcom/deepalhome/launcher/music/MusicBar;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/music/MusicBar;->onInit$lambda$1(Lcom/deepalhome/launcher/music/MusicBar;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KazdzkdAJ_2PXnlp4rQ6HoHnxqA(Lcom/deepalhome/launcher/music/MusicBar;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicBar;->onVisibilityChanged$lambda$7(Lcom/deepalhome/launcher/music/MusicBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WPkuTPLjPZ7iM4EX0Li8dXk5gbU(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicBar;->onInit$lambda$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hsSSIsbbOkiYrqU67hI5hKMm_uM(Lcom/deepalhome/launcher/music/MusicBar;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicBar;->showLoadingRunnable$lambda$4(Lcom/deepalhome/launcher/music/MusicBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jTVY5Ta94ywW5qfKpNCadUT8wis(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicBar;->onInit$lambda$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rMBTEC92QSGWLz3R3TMvnQkfy8U(Lcom/deepalhome/launcher/music/MusicBar;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicBar;->onAttachedToWindow$lambda$6(Lcom/deepalhome/launcher/music/MusicBar;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/music/MusicBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/music/MusicBar$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicBar;->Companion:Lcom/deepalhome/launcher/music/MusicBar$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/deepalhome/launcher/music/MusicBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/deepalhome/launcher/music/MusicBar$musicChangedListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/music/MusicBar$musicChangedListener$1;-><init>(Lcom/deepalhome/launcher/music/MusicBar;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicBar;->musicChangedListener:Lcom/deepalhome/launcher/music/MusicBar$musicChangedListener$1;

    new-instance p1, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/music/MusicBar;I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicBar;->showLoadingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/music/MusicBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$buildMusicKey(Lcom/deepalhome/launcher/music/MusicBar;Lcom/deepalhome/launcher/music/Music;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/music/MusicBar;->buildMusicKey(Lcom/deepalhome/launcher/music/Music;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCoverInfoRequestToken$p(Lcom/deepalhome/launcher/music/MusicBar;)J
    .locals 2

    iget-wide v0, p0, Lcom/deepalhome/launcher/music/MusicBar;->coverInfoRequestToken:J

    return-wide v0
.end method

.method public static final synthetic access$getCurrentMusicAppPackageName$p(Lcom/deepalhome/launcher/music/MusicBar;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicBar;->currentMusicAppPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCurrentMusicKey$p(Lcom/deepalhome/launcher/music/MusicBar;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicBar;->currentMusicKey:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$hideLoading(Lcom/deepalhome/launcher/music/MusicBar;Lcom/deepalhome/launcher/music/MusicBar;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/music/MusicBar;->hideLoading(Lcom/deepalhome/launcher/music/MusicBar;)V

    return-void
.end method

.method public static final synthetic access$setCoverInfoRequestToken$p(Lcom/deepalhome/launcher/music/MusicBar;J)V
    .locals 0

    iput-wide p1, p0, Lcom/deepalhome/launcher/music/MusicBar;->coverInfoRequestToken:J

    return-void
.end method

.method public static final synthetic access$setCurrentMusicAppPackageName$p(Lcom/deepalhome/launcher/music/MusicBar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicBar;->currentMusicAppPackageName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setCurrentMusicKey$p(Lcom/deepalhome/launcher/music/MusicBar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicBar;->currentMusicKey:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setLastCoverDrawable$cp(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    sput-object p0, Lcom/deepalhome/launcher/music/MusicBar;->lastCoverDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static final synthetic access$shouldUpdateCoverForSameMusic(Lcom/deepalhome/launcher/music/MusicBar;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/music/MusicBar;->shouldUpdateCoverForSameMusic(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$showLoading(Lcom/deepalhome/launcher/music/MusicBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicBar;->showLoading()V

    return-void
.end method

.method public static final synthetic access$updateCover(Lcom/deepalhome/launcher/music/MusicBar;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/music/MusicBar;->updateCover(Ljava/lang/Object;)V

    return-void
.end method

.method private final buildMusicKey(Lcom/deepalhome/launcher/music/Music;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/music/MusicBar;->normalizeMusicKeyPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/music/MusicBar;->normalizeMusicKeyPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final hideLoading(Lcom/deepalhome/launcher/music/MusicBar;)V
    .locals 1

    sget-object p0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v0, p1, Lcom/deepalhome/launcher/music/MusicBar;->showLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->loadingPb:Landroid/widget/ProgressBar;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final isHostDestroyed()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_3
    return v1
.end method

.method private final normalizeMusicKeyPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toLowerCase(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static final onAttachedToWindow$lambda$6(Lcom/deepalhome/launcher/music/MusicBar;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicBar;->updateMusicListenerRegistration()V

    return-void
.end method

.method private static final onInit$lambda$0(Landroid/view/View;)V
    .locals 1

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager$nextSong$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$nextSong$1;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$nextSong$2;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$nextSong$2;

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/music/MusicManager;->dispatchPlaybackControl(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final onInit$lambda$1(Lcom/deepalhome/launcher/music/MusicBar;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicBar;->currentMusicAppPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicManager;->handlePlayButtonClick(Ljava/lang/String;)V

    return-void
.end method

.method private static final onInit$lambda$2(Landroid/view/View;)V
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->showWindow()V

    return-void
.end method

.method private static final onVisibilityChanged$lambda$7(Lcom/deepalhome/launcher/music/MusicBar;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicBar;->updateMusicListenerRegistration()V

    return-void
.end method

.method private final setMusicListenerRegistered(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/MusicBar;->isMusicListenerRegistered:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/deepalhome/launcher/music/MusicBar;->isMusicListenerRegistered:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicBar;->musicChangedListener:Lcom/deepalhome/launcher/music/MusicBar$musicChangedListener$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->addOnMusicChangedListener(Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/music/MusicBar;->pendingCover:Ljava/lang/Object;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicBar;->pendingCover:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/music/MusicBar;->updateCover(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicBar;->musicChangedListener:Lcom/deepalhome/launcher/music/MusicBar$musicChangedListener$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->removeOnMusicChangedListener(Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;)V

    sget-object p1, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicBar;->showLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final shouldUpdateCoverForSameMusic(Ljava/lang/Object;)Z
    .locals 3

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicBar;->currentCoverSource:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/deepalhome/launcher/music/MusicCoverStore;->INSTANCE:Lcom/deepalhome/launcher/music/MusicCoverStore;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicCoverStore;->normalizeCoverString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicCoverStore;->normalizeCoverString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    if-eq p0, p1, :cond_2

    goto :goto_1

    :cond_4
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_5
    :goto_1
    return v1
.end method

.method private final showLoading()V
    .locals 4

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicBar;->showLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0c0021

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final showLoadingRunnable$lambda$4(Lcom/deepalhome/launcher/music/MusicBar;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->playBtn:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->loadingPb:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final updateCover(Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicBar;->isHostDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicBar;->pendingCover:Ljava/lang/Object;

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicBar;->currentCoverSource:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->coverIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/music/MusicBar;->lastCoverDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicBar;->coverTarget:Lcom/bumptech/glide/request/target/CustomTarget;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    :cond_2
    new-instance v1, Lcom/deepalhome/launcher/music/MusicBar$updateCover$target$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/music/MusicBar$updateCover$target$1;-><init>(Lcom/deepalhome/launcher/view/BaseView;I)V

    iput-object v1, p0, Lcom/deepalhome/launcher/music/MusicBar;->coverTarget:Lcom/bumptech/glide/request/target/CustomTarget;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x7f100000

    invoke-static {v0, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
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

    :cond_4
    :goto_0
    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicBar;->pendingCover:Ljava/lang/Object;

    return-void
.end method

.method private final updateMusicListenerRegistration()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/music/MusicBar;->setMusicListenerRegistered(Z)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e00ba

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    new-instance v0, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/music/MusicBar;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/music/MusicBar;->setMusicListenerRegistered(Z)V

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicBar;->showLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicBar;->coverTarget:Lcom/bumptech/glide/request/target/CustomTarget;

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

    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicBar;->coverTarget:Lcom/bumptech/glide/request/target/CustomTarget;

    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicBar;->pendingCover:Ljava/lang/Object;

    iget-wide v0, p0, Lcom/deepalhome/launcher/music/MusicBar;->coverInfoRequestToken:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/deepalhome/launcher/music/MusicBar;->coverInfoRequestToken:J

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public onInit()V
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->nextSongBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->playBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda3;-><init>(Lcom/deepalhome/launcher/music/MusicBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicBar;->updateMusicListenerRegistration()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    new-instance v0, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    new-instance p1, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/music/MusicBar;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateUIMode(Z)V
    .locals 3

    const/high16 v0, 0x7f100000

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06038c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->playBtn:Landroid/widget/ImageView;

    const v1, 0x7f0801d8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->nextSongBtn:Landroid/widget/ImageView;

    const v1, 0x7f0801d2

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->loadingPb:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->coverBackground:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {p1, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0801da

    invoke-static {p0, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->coverBackground:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
