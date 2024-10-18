SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score >= 71
AND p.CommentCount >= 16
AND p.CommentCount <= 37

AND p.Id = ph.PostId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;