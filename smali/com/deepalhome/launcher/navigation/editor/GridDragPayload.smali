.class public interface abstract Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$DefaultImpls;,
        Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;,
        Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;,
        Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;,
        Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;
    }
.end annotation


# virtual methods
.method public abstract allowOccupiedReplacement()Z
.end method

.method public abstract applyDrop(Lcom/deepalhome/launcher/navigation/editor/GridEditorSession;Lcom/deepalhome/launcher/navigation/model/GridPlacement;)Lcom/deepalhome/launcher/navigation/editor/GridEditResult;
.end method

.method public abstract getType()Lcom/deepalhome/launcher/navigation/model/GridItemType;
.end method

.method public abstract ignoredItemId()Ljava/lang/String;
.end method

.method public abstract itemAt(Lcom/deepalhome/launcher/navigation/model/GridSchema;Lcom/deepalhome/launcher/navigation/model/GridPlacement;)Lcom/deepalhome/launcher/navigation/model/GridItem;
.end method
