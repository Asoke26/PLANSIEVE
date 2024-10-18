SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount >= 25.0
AND u.Reputation >= 377
AND u.Views >= 334
AND u.Views <= 5680
AND u.UpVotes = 454
AND v.CreationDate >= 446
AND v.CreationDate <= 916
AND u.CreationDate >= 475
AND u.CreationDate <= 510

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;