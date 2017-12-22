.class Lcom/xiaomi/accountsdk/guestaccount/y;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final OY:Lorg/json/JSONObject;

.field final OZ:Ljava/lang/Integer;

.field final Pa:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/y;->OZ:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/guestaccount/y;->OY:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/guestaccount/y;->Pa:Lorg/json/JSONObject;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/y;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/accountsdk/guestaccount/y;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method
