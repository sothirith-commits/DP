.class public interface abstract Lcom/openos/virtualcar/IVirturalCarProperty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract getPropertyConfig(I)Lcom/openos/virtualcar/entity/VirtualPropertyConfig;
.end method

.method public abstract getPropertyConfigList()Ljava/util/List;
.end method

.method public abstract getValue(II)Lcom/openos/virtualcar/entity/VirtualCarValue;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isSupport(II)Z
.end method

.method public abstract register([ILcom/openos/virtualcar/IVirtualCarPropertyEventListener;)V
.end method

.method public abstract reportConcern(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/openos/virtualcar/IVirtualCarPropertyEventListener;)Z
.end method

.method public abstract reportUnConcern()Z
.end method

.method public abstract setValue(Lcom/openos/virtualcar/entity/VirtualCarValue;)I
.end method

.method public abstract unRegister([ILcom/openos/virtualcar/IVirtualCarPropertyEventListener;)V
.end method
