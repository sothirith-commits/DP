.class public final Lcom/deepalhome/launcher/settings/ActionPickerCatalog$getRootOptions$options$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $surface:Lcom/deepalhome/launcher/settings/ActionPickerSurface;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/ActionPickerSurface;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$getRootOptions$options$1;->$surface:Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$getRootOptions$options$1;->$surface:Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->getBit()I

    move-result p0

    iget v0, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->supportedSurfacesMask:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;->isVisible:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
