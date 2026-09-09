.class public final Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$6;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$6;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/widget/WidgetInfo;

    const-string v0, "widgetInfo"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$6;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    iget p1, p1, Lcom/deepalhome/launcher/widget/WidgetInfo;->id:I

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$showImageWidgetPicker(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
