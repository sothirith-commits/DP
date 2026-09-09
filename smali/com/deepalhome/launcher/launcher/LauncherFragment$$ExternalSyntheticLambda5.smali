.class public final synthetic Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZI)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda5;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    iput-boolean p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda5;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda5;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda5;->f$1:Z

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$9Eex0qkt2GpDIuRSxOQ-ywo6zZw(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda5;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda5;->f$1:Z

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$1OlyUzgHSKxICg8ZPRMKXaKrPU4(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda5;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda5;->f$1:Z

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$KZEr7nX0hcobrCxilGtJdcPabfk(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
