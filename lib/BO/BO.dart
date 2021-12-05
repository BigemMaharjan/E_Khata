// BO == Business Objects
import '../models/user.dart';

/// Here we got functions, widgets or whatever we want to help
// getstatusCode() is a function that give us info about http response
// we give it the status code and returns its meaning
String getstatusCode(int statusCode) {
  late String result;
  String ri = 'Informative response:';
  String rs = 'Satisfactory answer:';
  String redirection = 'Redirection:';
  String ec = 'Client error:';
  String es = 'Server error:';

  switch (statusCode) {
    case 100:
      {
        result =
            '$ri Everything ok. You must continue with the request or ignore it if it is finished';
      }
      break;
    case 101:
      {
        result = '$ri UPGRADE application accepted.';
      }
      break;
    case 102:
      {
        result = '$ri Processing the request.';
      }
      break;
    case 200:
      {
        result = '$rs The request has been successful.';
      }
      break;
    case 201:
      {
        result =
            '$rs The request was successful and a new resource was created as a result. This is typically the response sent after a PUT request.';
      }
      break;
    case 202:
      {
        result =
            '$rs The request has been received, but has not yet been acted upon. It is a "No Commitment" request, which means that there is no way in HTTP that allows an asynchronous response to be sent indicating the result of the request processing. It is intended for cases where the request is handled by another process or server, or for batch processing.';
      }
      break;
    case 203:
      {
        result =
            '$rs The request has been completed successfully, but its content has not been obtained from the originally requested source, but is collected from a local copy or from a third party. Except for this condition, a 200 OK answer should be preferred instead of this answer.';
      }
      break;
    case 204:
      {
        result =
            '$rs The request has been completed successfully but your response has no content, although the headers can be useful. The user agent can update its cached headers for this resource with the new values.';
      }
      break;
    case 205:
      {
        result =
            '$rs The request has been completed successfully, but its response has no content and in addition, the user agent has to initialize the page from which the request was made, this code is useful for example for pages with forms whose content must be deleted after that the user send it.';
      }
      break;
    case 206:
      {
        result =
            '$rs The request will partially serve the requested content. This feature is used by download tools such as wget to continue the transfer of previously interrupted downloads, or to split a download and process parts simultaneously.';
      }
      break;
    case 207:
      {
        result =
            '$rs A Multi-State response conveys information about various resources in situations where multiple status codes might be appropriate. The body of the request is an XML message.';
      }
      break;
    case 208:
      {
        result =
            '$rs The list of DAV elements has already been previously notified, so they will not be listed again.';
      }
      break;
    case 226:
      {
        result =
            '$rs The server has fulfilled a GET request for the resource and the response is a representation of the result of one or more instance manipulations applied to the current instance.';
      }
      break;
    case 300:
      {
        result =
            '$redirection This request has more than one possible answer. User-Agent or the user must choose one of them. There is no standardized way to select one of the answers.';
      }
      break;
    case 301:
      {
        result =
            '$redirection This response code means that the URI of the requested resource has been changed. Probably a new URI will be returned in the response.';
      }
      break;
    case 302:
      {
        result =
            '$redirection This response code means that the resource for the requested URI has been temporarily changed. New changes to the URI will be added in the future. Therefore, the same URI must be used by the client in future requests.';
      }
      break;
    case 303:
      {
        result =
            '$redirection The server sends this response to direct the client to a new resource requested at another address using a GET request.';
      }
      break;
    case 304:
      {
        result =
            '$redirection This is used for "cache" purposes. It tells the client that the response has not been modified. The client can then continue to use the same cached version.';
      }
      break;
    case 305:
      {
        result =
            '$redirection It was defined in a previous version of the HTTP protocol specification to indicate that a requested response must be accessed from a proxy. It has been deprecated due to security concerns pertaining to setting up a proxy.';
      }
      break;
    case 306:
      {
        result =
            '$redirection Este código de respuesta ya no es usado más. Actualmente se encuentra reservado. Fue usado en previas versiones de la especificación HTTP1.1.';
      }
      break;
    case 307:
      {
        result =
            '$redirection The server sends this response to direct the client to obtain the requested resource from another URI with the same method as the previous request. It has the same semantics as the HTTP 302 Found response code, with the exception that the user agent must not change the HTTP method used: if a POST was used in the first request, another POST must be used in the second request.';
      }
      break;
    case 308:
      {
        result =
            '$redirection It means that the resource is now permanently located in another URI, specified by the HTTP Location: header response. It has the same semantics as the HTTP 301 Moved Permanently response code, with the exception that the user agent must not change the HTTP method used: if a POST was used in the first request, another POST must be used in the second request.';
      }
      break;
    case 400:
      {
        result =
            '$ec This response means that the server could not interpret the request given invalid syntax.';
      }
      break;
    case 401:
      {
        result =
            '$ec Authentication is required to get the requested response. This is similar to 403, but in this case, authentication is possible.';
      }
      break;
    case 402:
      {
        result =
            '$ec This response code is reserved for future use. The initial objective of creating this code was to be used in digital payment systems. However, it is not currently being used.';
      }
      break;
    case 403:
      {
        result =
            '$ec The client does not have the necessary permissions for certain content, so the server is refusing to grant an appropriate response.';
      }
      break;
    case 404:
      {
        result =
            '$ec The server could not find the requested content. This response code is one of the most famous given its high occurrence on the web.';
      }
      break;
    case 405:
      {
        result =
            '$ec The requested method is known to the server but has been disabled and cannot be used. The two mandatory methods, GET and HEAD, should never be disabled and should not return this error code.';
      }
      break;
    case 406:
      {
        result =
            '$ec This response is sent when the server, after applying a server-driven content negotiation, does not find any content followed by the criteria given by the user.';
      }
      break;
    case 407:
      {
        result =
            '$ec This is similar to code 401, but the authentication must be done through a proxy.';
      }
      break;
    case 408:
      {
        result =
            '$ec This response is sent on an idle connection on some servers, even without any prior request from the client. It means that the server wants to disconnect this connection without using it. This response is widely used by some browsers, such as Chrome, Firefox 27+, or IE9, it uses HTTP pre-connection mechanisms to speed up browsing. Also keep in mind that some servers simply disconnect the connection without sending this message.';
      }
      break;
    case 409:
      {
        result =
            '$ec This response can be sent when a request conflicts with the current state of the server.';
      }
      break;
    case 410:
      {
        result =
            '$ec This response can be sent when the requested content has been deleted from the server.';
      }
      break;
    case 411:
      {
        result =
            '$ec The server rejects the request because the Content-Length header field is not defined and the server requires it.';
      }
      break;
    case 412:
      {
        result =
            '$ec The client has indicated pre-conditions in their headers which the server does not meet.';
      }
      break;
    case 413:
      {
        result =
            '$ec The request entity is longer than the limits defined by the server; the server can close the connection or return a Retry-After header field.';
      }
      break;
    case 414:
      {
        result =
            '$ec The URI requested by the client is longer than the server is willing to interpret.';
      }
      break;
    case 415:
      {
        result =
            '$ec The multimedia format of the requested data is not supported by the server, therefore the server rejects the request.';
      }
      break;
    case 416:
      {
        result =
            '$ec The range specified by the Range header field in the request does not match; the range may be outside the size of the URI target data.';
      }
      break;
    case 417:
      {
        result =
            '$ec It means that the expectation indicated by the requested Expect header field cannot be fulfilled by the server.';
      }
      break;
    case 418:
      {
        result = '$ec The server refuses to try to make coffee with a kettle.';
      }
      break;
    case 421:
      {
        result =
            '$ec The request was directed to a server that is unable to produce a response. This can be sent by a server that is not configured to produce responses by the combination of the schema and authority that are included in the requested URI.';
      }
      break;
    case 422:
      {
        result =
            '$ec The request was well formed but could not be followed due to semantic errors.';
      }
      break;
    case 423:
      {
        result = '$ec The resource that is being accessed is locked.';
      }
      break;
    case 424:
      {
        result =
            '$ec The request failed due to a failure of a previous request.';
      }
      break;
    case 426:
      {
        result =
            '$ec The server refuses to apply the request using the current protocol but may be willing to do so after the client upgrades to a different protocol. The server sends an Upgrade header in a response to indicate the required protocols.';
      }
      break;
    case 428:
      {
        result =
            '$ec The origin server requires the request to be conditional. It is intended to prevent "update lost" problems, where a client GETS a resource state, modifies it, and PUTS it back to the server, when while a third party has modified the server state, leading to a conflict.';
      }
      break;
    case 429:
      {
        result =
            '$ec The user has submitted too many requests in a given period of time.';
      }
      break;
    case 431:
      {
        result =
            '$ec The server is unwilling to process the request because the header fields are too long. The request MAY be re-uploaded after reducing the size of the requested header fields.';
      }
      break;
    case 451:
      {
        result =
            '$ec The user requests an illegal resource, such as a website censored by a government.';
      }
      break;
    case 500:
      {
        result =
            '$es The server has encountered a situation that it does not know how to handle.';
      }
      break;
    case 501:
      {
        result =
            '$es The requested method is not supported by the server and cannot be handled. The only methods that servers require support (and therefore should not return this code) are GET and HEAD.';
      }
      break;
    case 502:
      {
        result =
            '$es This error response means that the server, while working as a gateway to get a response necessary to handle the request, got an invalid response.';
      }
      break;
    case 503:
      {
        result =
            '$es The server is not ready to handle the request. Common causes may be that the server is down for maintenance or is overloaded. It should be noted that along with this answer, a user-friendly page explaining the problem must be submitted. These responses should be used for temporary conditions and the HTTP Retry-After header: should, if possible, contain the estimated time before service recovery. The webmaster must also take care of the cache-related headers that are sent along with this response, since these time-condition responses must usually not be in the cache.';
      }
      break;
    case 504:
      {
        result =
            '$es This error response is given when the server is acting as a gateway and cannot get a response in time.';
      }
      break;
    case 505:
      {
        result =
            '$es The version of HTTP used in the request is not supported by the server.';
      }
      break;
    case 506:
      {
        result =
            '$es The server has an internal configuration error: transparent content negotiation for the request results in a circular reference.';
      }
      break;
    case 507:
      {
        result =
            '$es The server has an internal configuration error: the chosen resource variable is configured to accommodate the transparent content negotiation itself, and is therefore not a suitable endpoint for the negotiation process.';
      }
      break;
    case 508:
      {
        result =
            '$es The server encountered an infinite loop while processing the request.';
      }
      break;
    case 510:
      {
        result =
            '$es Additional extensions for the request are required for the server to fulfill them.';
      }
      break;
    case 511:
      {
        result =
            '$es Status code 511 indicates that the client needs to authenticate to gain access to the network.';
      }
      break;
  }
  return 'Status $statusCode => $result';
}

bool isNullOrEmpty(String string) {
  if (string.isEmpty || string == '') {
    return true;
  } else {
    return false;
  }
}

bool isDefault(User user) {
  if ((user.id == -1 && user.username == '')) {
    return true;
  } else {
    return false;
  }
}
