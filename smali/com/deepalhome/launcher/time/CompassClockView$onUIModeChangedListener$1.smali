.class public final Lcom/deepalhome/launcher/time/CompassClockView$onUIModeChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/time/CompassClockView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/time/CompassClockView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/time/CompassClockView$onUIModeChangedListener$1;->this$0:Lcom/deepalhome/launcher/time/CompassClockView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/deepalhome/launcher/time/CompassClockView$onUIModeChangedListener$1;->this$0:Lcom/deepalhome/launcher/time/CompassClockView;

    sget v1, Lcom/deepalhome/launcher/time/CompassClockView;->$r8$clinit:I

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/time/CompassClockView;->applyUIMode(Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/time/CompassClockView$onUIModeChangedListener$1;->this$0:Lcom/deepalhome/launcher/time/CompassClockView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
