.class public final synthetic Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda15;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda15;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda15;->$r8$classId:I

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda15;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$UtbPO7FdVfxGgIkKUQb8bUAm8H8(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$YyPiyXV2eSigq3B2yHPsBbAk8jE(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
