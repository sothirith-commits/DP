.class public final Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$srSettingChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$srSettingChangedListener$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$srSettingChangedListener$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    invoke-static {p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateCarSrState$default(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
