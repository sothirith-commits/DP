.class public final synthetic Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;->f$1:I

    iput-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    iput p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    iget p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;->f$1:I

    invoke-static {p0, v0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$eRutGHAsXIaaO1eptQzY27-z0CA(ILjava/lang/String;Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return-void

    :pswitch_0
    iget v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;->f$1:I

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;->f$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {v0, v1, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$fio57liMt3js2ypYrBpukNZgWwY(ILjava/lang/String;Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
