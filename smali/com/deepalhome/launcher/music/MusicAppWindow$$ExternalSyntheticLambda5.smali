.class public final synthetic Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda5;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "this$0"

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda5;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iget p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicAppWindow;->isLyricShow()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v2, v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->showCover(Z)V

    goto :goto_0

    :cond_0
    const-string p0, ""

    invoke-static {p0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object p0

    const-string p1, "KEY_LYRIC_SHOW"

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Z)V

    iget-wide p0, v2, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverLayoutToken:J

    const-wide/16 v3, 0x1

    add-long/2addr p0, v3

    iput-wide p0, v2, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverLayoutToken:J

    invoke-virtual {v2, p0, p1, v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->applyLyricLayout(JZ)V

    :goto_0
    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lcom/deepalhome/launcher/music/MusicAppWindow;->playButtonClickAnimation(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->scheduleFontMenuAutoCollapse()V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getLyricTraditionalChineseEnabled()Z

    move-result p0

    xor-int/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/config/UserConfig;->setLyricTraditionalChineseEnabled(Z)V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicSettingsManager;->notifyChanged()V

    return-void

    :pswitch_1
    sget p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    iget-object p1, v2, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentMusicAppPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicManager;->launchCurrentMusicApp(Ljava/lang/String;)Z

    return-void

    :pswitch_2
    sget p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    iget-object p1, v2, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentMusicAppPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicManager;->launchCurrentMusicApp(Ljava/lang/String;)Z

    return-void

    :pswitch_3
    sget p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->createMusicAppAdapter()Lcom/deepalhome/launcher/music/MusicAppWindow$createMusicAppAdapter$1;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->selectMusicAppContainer:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

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
