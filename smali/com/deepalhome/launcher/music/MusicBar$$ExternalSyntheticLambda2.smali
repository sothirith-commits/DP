.class public final synthetic Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->$r8$clinit:I

    return-void

    :pswitch_0
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->Companion:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$Companion;

    return-void

    :pswitch_1
    sget p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->relaunchApp()V

    return-void

    :pswitch_2
    sget p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    const-class p0, Lcom/deepalhome/launcher/HelperActivity;

    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Ljava/lang/Class;)V

    return-void

    :pswitch_3
    sget p0, Lcom/deepalhome/launcher/settings/AboutSettingsView;->$r8$clinit:I

    return-void

    :pswitch_4
    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicBar;->$r8$lambda$jTVY5Ta94ywW5qfKpNCadUT8wis(Landroid/view/View;)V

    return-void

    :pswitch_5
    invoke-static {p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$cEO-0ixjVTp9ILxZPFRNvrx28l0(Landroid/view/View;)V

    return-void

    :pswitch_6
    invoke-static {p1}, Lcom/deepalhome/launcher/music/MusicBar;->$r8$lambda$WPkuTPLjPZ7iM4EX0Li8dXk5gbU(Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
