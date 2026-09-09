.class public final synthetic Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/io/File;I)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda24;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda24;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    iput-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda24;->f$1:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda24;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda24;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda24;->f$1:Ljava/io/File;

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$bK1CCsg96tfCULtjOTdUxnhweEk(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/io/File;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda24;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda24;->f$1:Ljava/io/File;

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$AjKI4GkcMsGYQGdA6IKx9Q8EZso(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/io/File;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
