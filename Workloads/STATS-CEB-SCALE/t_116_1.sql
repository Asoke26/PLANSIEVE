SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.ViewCount >= 1711.0
AND p.CommentCount >= 0
AND v.VoteTypeId = 8
AND u.Views >= 52
AND u.Views <= 160
AND u.UpVotes >= 115
AND ph.CreationDate >= 819

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;