.class public final synthetic Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/window/WindowsView;

.field public final synthetic f$1:Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/window/WindowsView;Landroid/widget/PopupWindow;I)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda3;->f$0:Lcom/deepalhome/launcher/window/WindowsView;

    iput-object p2, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda3;->f$1:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda3;->f$0:Lcom/deepalhome/launcher/window/WindowsView;

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda3;->f$1:Landroid/widget/PopupWindow;

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/window/WindowsView;->$r8$lambda$mmwMlMiAj4kKHUfyyrYHa7U4aaU(Lcom/deepalhome/launcher/window/WindowsView;Landroid/widget/PopupWindow;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda3;->f$0:Lcom/deepalhome/launcher/window/WindowsView;

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda3;->f$1:Landroid/widget/PopupWindow;

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/window/WindowsView;->$r8$lambda$hOEP88k0lt1VjfaeuDKrTTQqHPs(Lcom/deepalhome/launcher/window/WindowsView;Landroid/widget/PopupWindow;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda3;->f$0:Lcom/deepalhome/launcher/window/WindowsView;

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda3;->f$1:Landroid/widget/PopupWindow;

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/window/WindowsView;->$r8$lambda$nWKYLH-ATAUSgFMP2uvo7-OfGSc(Lcom/deepalhome/launcher/window/WindowsView;Landroid/widget/PopupWindow;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
