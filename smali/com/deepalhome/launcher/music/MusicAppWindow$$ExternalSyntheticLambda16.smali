.class public final synthetic Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda16;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda16;->f$0:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda16;->$r8$classId:I

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda16;->f$0:Landroid/widget/LinearLayout;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$RF4BIX-a9ck3RACAsRkGtRs31FE(Landroid/widget/LinearLayout;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->$r8$lambda$tEGX1jxt0v28vMkf4syR0nDO-7o(Landroid/widget/LinearLayout;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$lambda$i3X9st624pkIqTryPq-Exectows(Landroid/widget/LinearLayout;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
