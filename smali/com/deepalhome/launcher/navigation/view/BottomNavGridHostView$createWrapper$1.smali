.class public final Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$createWrapper$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->createWrapper()Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$createWrapper$1;->this$0:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$createWrapper$1;->this$0:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->access$getEditMode$p(Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
