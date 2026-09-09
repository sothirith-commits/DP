.class public final Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $normalizedConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

.field final synthetic $previousConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

.field final synthetic this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$2;->this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    iput-object p2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$2;->$previousConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    iput-object p3, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$2;->$normalizedConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v0, "type"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$2;->this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$2;->$previousConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    invoke-static {v0, v1, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->access$containsType(Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$2;->this$0:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    iget-object p0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$2;->$normalizedConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    invoke-static {v1, p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->access$containsType(Lcom/deepalhome/launcher/app/FunctionListAdapter;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Z

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
