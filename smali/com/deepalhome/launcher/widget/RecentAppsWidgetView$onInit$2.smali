.class public final Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$onInit$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$onInit$2;->this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/ArrayList;

    const-string v0, "apps"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$onInit$2;->this$0:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    sget v0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->$r8$clinit:I

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->refreshEntries(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
