.class Lcom/xiaomi/finddevice/Application$1;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Lmiui/cloud/common/XLogger$LogSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/Application;->setupLogger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/finddevice/Application;


# direct methods
.method constructor <init>(Lcom/xiaomi/finddevice/Application;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/finddevice/Application;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/xiaomi/finddevice/Application$1;->this$0:Lcom/xiaomi/finddevice/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method
