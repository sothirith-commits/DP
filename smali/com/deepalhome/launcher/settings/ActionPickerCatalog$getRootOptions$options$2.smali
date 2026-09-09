.class public final Lcom/deepalhome/launcher/settings/ActionPickerCatalog$getRootOptions$options$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$getRootOptions$options$2;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$getRootOptions$options$2;->$context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/settings/ActionPickerOption;

    iget-object v1, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->title:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    iget-object p0, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->action:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/task/model/TaskAction;

    :goto_0
    move-object v5, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    const/16 v10, 0x20

    iget-object v2, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->key:Ljava/lang/String;

    iget v3, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->iconRes:I

    iget-object v6, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

    iget-object v8, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->submenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    iget-boolean v9, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->tintIcon:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/deepalhome/launcher/settings/ActionPickerOption;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/event/MenuType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;ZI)V

    return-object v0
.end method
