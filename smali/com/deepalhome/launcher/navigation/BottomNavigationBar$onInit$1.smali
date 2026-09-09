.class public final synthetic Lcom/deepalhome/launcher/navigation/BottomNavigationBar$onInit$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput p7, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$onInit$1;->$r8$classId:I

    invoke-direct/range {p0 .. p6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$onInit$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    const-string v0, "p1"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->access$labelFor(Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    const-string v0, "p1"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->access$labelFor(Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    const-string v0, "p1"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->access$labelFor(Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;

    check-cast p2, Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    const-string v0, "p0"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "p1"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->access$handleDrop(Lcom/deepalhome/launcher/navigation/BottomNavigationBar;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;Lcom/deepalhome/launcher/navigation/model/GridPlacement;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
