.class public final synthetic Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/window/WindowsView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/window/WindowsView;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/window/WindowsView;

    const-string v0, "$view"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->showPending:Z

    sget-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->shouldShow:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->performShow(Lcom/deepalhome/launcher/window/WindowsView;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/window/WindowsView;

    const-string v0, "$view"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->performShow(Lcom/deepalhome/launcher/window/WindowsView;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
