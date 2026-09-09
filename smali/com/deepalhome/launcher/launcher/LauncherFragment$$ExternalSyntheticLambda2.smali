.class public final synthetic Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$6BGTUZeZ3z-5u49C0d1DG2Q97RE(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$3djF2CQ6Qcmh9E_vkidLNco_xBc(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/content/DialogInterface;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
