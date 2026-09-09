.class public final Lcom/deepalhome/launcher/view/DragLinearLayout$DragHandleOnTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/view/DragLinearLayout;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/view/DragLinearLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragHandleOnTouchListener;->this$0:Lcom/deepalhome/launcher/view/DragLinearLayout;

    iput-object p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragHandleOnTouchListener;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragHandleOnTouchListener;->this$0:Lcom/deepalhome/launcher/view/DragLinearLayout;

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragHandleOnTouchListener;->view:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$2700(Lcom/deepalhome/launcher/view/DragLinearLayout;Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
