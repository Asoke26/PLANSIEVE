SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score >= 135
AND p.CommentCount >= 5
AND p.CommentCount <= 32

AND p.Id = ph.PostId
AND u.Id = p.OwnerUserId
AND p.Id = v.PostId;