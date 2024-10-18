SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.ViewCount >= 1971.0
AND p.CommentCount >= 1
AND v.VoteTypeId = 5
AND u.Views >= 123
AND u.Views <= 212
AND u.UpVotes >= 86
AND ph.CreationDate >= 153

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;