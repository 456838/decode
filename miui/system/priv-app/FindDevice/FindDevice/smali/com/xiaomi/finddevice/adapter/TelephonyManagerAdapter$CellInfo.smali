.class public abstract Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
.super Ljava/lang/Object;
.source "TelephonyManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CellInfo"
.end annotation


# instance fields
.field public mobileCountryCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string/jumbo v0, "460"

    iput-object v0, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;->mobileCountryCode:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public abstract isGoodInfo()Z
.end method

.method public abstract toBinary()[B
.end method

.method public abstract toJSON()Lorg/json/JSONObject;
.end method
